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
defaultClient.basePath = "https://connect.squareupsandbox.com";


// Configure OAuth2 access token for authorization: oauth2
const oauth2 = defaultClient.authentications['oauth2'];
oauth2.accessToken = 'EAAAEJjxBjV2DKSTQJPchFidkWE8izfkOeTF3aQbsvQklnlLSii-Ti1r8L67imjf';

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
            res.send(200);
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
        const locationID = "LX5RNR9P3K0C5";

        const line_items = req.body.line_items;
                  
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
