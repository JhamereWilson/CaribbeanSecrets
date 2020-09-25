"use strict";
Object.defineProperty(exports, "__esModule", { value: true });

const functions = require("firebase-functions");
const cors = require('cors');
const corsHandler = cors({ origin: true });

const SquareConnect = require('square-connect');
const defaultClient = SquareConnect.ApiClient.instance;
defaultClient.basePath = "https://connect.squareupsandbox.com";

// Configure OAuth2 access token for authorization: oauth2
const oauth2 = defaultClient.authentications['oauth2'];
oauth2.accessToken = 'EAAAEJjxBjV2DKSTQJPchFidkWE8izfkOeTF3aQbsvQklnlLSii-Ti1r8L67imjf';

const apiInstance = new SquareConnect.CustomersApi();



// exports.createCustomer = functions.https.onCall( async (reqData, context) => {
//     const body = new SquareConnect.CreateCustomerRequest({
//         email_address: reqData.email
//     });
//     return apiInstance.createCustomer(body).then();


//     // apiInstance.createCustomer(body)
//     //     .then(function (data) {
//     //         console.log(data);
//     //     }, function (error) {
//     //         console.error(error);
//     //     });

// });

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









