const express = require("express");

const app = express();

app.use(express.json());

app.use(express.urlencoded({
    extended: true
}));

const personData = [];

port = 3000;

app.listen(port,() =>{
    console.log(`Successfully connect to ${port}`);
});

app.post("/api/add_person",(req,res) => {
    console.log("Result",req.body);
    const pdata = {
        "id" : personData.length+1,
        "pname" : req.body.pname,
        "pphone" : req.body.pphone,
        "pAge" : req.body.pAge,
    }

    personData.push(pdata);
    console.log("Final Result",pdata);

    res.statusCode(200).send({
        "Status_code" : 200,
         "Message" : "Person data is added Successfully",
         "person" : pdata,
    });

    res.statusCode(400).send({
        "Status_code" : 400,
        "Message" : "Not Found",
        "person" : pdata,
    });
});