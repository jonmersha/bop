const express=require('express');
const app=express();
const nodemailer = require('nodemailer');
const https = require('https')
const commands=require('./util/commonSQL.js');
var host = 'https://hiramailer.herokuapp.com/em';

const path = require('path')
app.use('/static', express.static(path.join(__dirname, '../public')))
app.use(
    express.urlencoded({
      extended: true
    })
  )

  
  app.use(express.json())
 

  app.get('/test',(req,res)=>{
      res.send("the page is working")
  })

app.get('/service',(req,res)=>{
    commands.selectAll(res,'BOP');   
})

  app.get('/service2',(req,res,next)=>{
      let service={service:[
          {
            id:"234",
            name:"Credit",
            description:"Credit operations",
            image:"icon.png"
          },
          {
            id:"234",
            name:"Account Apening",
            description:"Credit operations",
            image:"icon.png"
          },
          {
            id:"234",
            name:"Cash",
            description:"Credit operations",
            image:"icon.png"
          }
          ]}
          var document='Muservcie'
          res.send({[document]:service})
      
  })
  app.get('/document',(req,res,next)=>{
  let docuemnt={document: [
      {
    name:"MICROFINANCE INSTITUIONS SUPERVISION DIRECTORATE",
    image:"nbe.png",
    doc_path:"nbe/riks-management-microfinace.pdf",
    description:"RISK MANAGEMENT GUIDLEIES for MICROFINANCE INSTITITTIONS"
    
  },
  {
    name:"User Loan",
    image:"icon.png",
    doc_path:"nbe/riks-management-microfinace.pdf",
    description:"Term Loan for Corporate customers"
  },
  {
    name:"CAWO",
    image:"icon.png",
    doc_path:"nbe/riks-management-microfinace.pdf",
    description:"Customer Account Operations"
  }
]}
  res.send(docuemnt)
})

app.listen(5000)