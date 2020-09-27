"use strict";
Object.defineProperty(exports, "__esModule", { value: true });

const functions = require("firebase-functions");
const cors = require('cors');
const corsHandler = cors({ origin: true });
const { v4: uuidv4 } = require('uuid');



const SquareConnect = require('square-connect');
const crypto = require('crypto');
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
        
        try {
            console.log("adding user" + req.body);
            
            await apiInstance.createCustomer({
                email_address: email,
            });
            console.log(`Added user: ${email} to Customers`);
            res.status(200).send(`Success adding ${customerID} list`);
        }
        catch (error) {
            console.error("Error when adding user to Mailchimp audience", error);
            res.send(error);
        }
    });
});


//Checkout API Call

exports.createCheckout = functions.region('us-central1').https.onRequest((req, res) => {
    corsHandler(req, res, async () => {
        const locationID = "LX5RNR9P3K0C5";
        const body = new SquareConnect.CreateCheckoutRequest(req.body);
        
            console.log("CREATING CHECKOUT")
            console.log(body)
            await checkout_api.createCheckout(
                locationID, body
            ).then((result) => { 
                console.log(res.body)
                return res.send(result);
            
            }).catch((error) => {
                res.send(error);
            });
        
     
    });
});











