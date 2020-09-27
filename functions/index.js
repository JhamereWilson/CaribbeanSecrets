"use strict";
Object.defineProperty(exports, "__esModule", { value: true });

const functions = require("firebase-functions");
const cors = require('cors');
const corsHandler = cors({ origin: true });



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

exports.createCheckout = functions.https.onRequest((req, res) => {
    var locationID = LX5RNR9P3K0C5;
    const idempotencyKey = crypto.randomBytes(22).toString('hex');
    const requestBody = new SquareConnect.CreateCheckoutRequest({idempotency_key: idempotencyKey, locationID: locationID, ask_for_shipping_address: true, order: {idempotency_key: idempotencyKey, referenceID: Date.now.toString},})
    corsHandler(req, res, async () => {
        
        try {
            const response = 
            
            await checkout_api.createCheckout(requestBody);
            
            res.status(200).send(response);
        }
        catch (error) {
            console.error("Error when checking out", error);
            res.send(error);
        }
    });
});









