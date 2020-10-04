"use strict";
Object.defineProperty(exports, "__esModule", { value: true });

const functions = require("firebase-functions");
const cors = require('cors');
const corsHandler = cors({ origin: true });
const express = require('express');
const app = express();
app.use(cors({ origin: true }));
const SquareConnect = require('square-connect');
const crypto = require('crypto');
const { request } = require("https");
const defaultClient = SquareConnect.ApiClient.instance;
defaultClient.basePath = "https://connect.squareup.com";


// Configure OAuth2 access token for authorization: oauth2
const oauth2 = defaultClient.authentications['oauth2'];
oauth2.accessToken = 'EAAAEFI4Et6nidbtoygmUAS1uwiZoNXLt2dhHgQcLM9fHjhcCQ61-EsbfW4OrcmH';

const customersApiInstance = new SquareConnect.CustomersApi();
const checkout_api = new SquareConnect.CheckoutApi();




//Customers API Call
exports.createCustomer = functions.https.onRequest((req, res) => {
    corsHandler(req, res, async () => {
        const email = req.body.email;

        await customersApiInstance.createCustomer({email_address: email})
        .then(data => {
            console.log('API called successfully. Returned data: ' + data);
            console.log(JSON.stringify(data));
            res.status(200).send;
            return JSON.stringify(data.customer);
        }, error => {
            console.error(error);
            return null;
        });
    });
});



// //Checkout API Call

exports.createCheckout = functions.https.onRequest((req, res) => {
    corsHandler(req, res, async () => {
        const checkout_idempotency_key = crypto.randomBytes(48).toString('hex');
        const order_idempotency_key = crypto.randomBytes(48).toString('hex');
        const locationID = "LWAJ295WG9XJW";

        const line_items = req.body.line_items;
        console.log(line_items);
                  
            await checkout_api.createCheckout(locationID,
                { 
                    idempotency_key: checkout_idempotency_key,
                    order: {
                        idempotency_key: order_idempotency_key,
                        order: {
                            reference_id: Date.now().toString(),
                            location_id: locationID,
                            line_items: line_items,      
                        },
                    },
            "ask_for_shipping_address": true
          }        
                )   
            .then( returnedCheckout => {
                console.log(JSON.stringify(returnedCheckout.checkout.checkout_page_url));
                res.send(returnedCheckout.checkout.checkout_page_url);
                return returnedCheckout;
            }).catch( error => {
                console.error("THERE WAS AN ISSUE" + error);
                console.log(error);
                res.send("Error " +  error);
            });
    });
});
