const http = require('http');
const fs = require('fs')
 
// Create a server object
const server = http.createServer()
const server1 = http.createServer()
const server2 = http.createServer()
const server3 = http.createServer()
const server4 = http.createServer()


server.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1412')
     res.end('<h2>Thank you for conecting 1412 port....</h2>')
}).listen(1412 , () =>{
    console.log("Server Start at http://localhost:1412");
}) 
server1.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1413')
    res.end('<h2>Thank you for conecting 1413 port....</h2>')
}).listen(1413 , () =>{
    console.log("Server Start at http://localhost:1413");
})
server2.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1414')
    res.end('<h2>Thank you for conecting 1414 port....</h2>')
}).listen(1414 , () =>{
    console.log("Server Start at http://localhost:1414");
})
server3.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1415')
    res.end('<h2>Thank you for conecting 1415 port....</h2>')
}).listen(1415 , () =>{
    console.log("Server Start at http://localhost:1415");
})
server4.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1416')
    res.end('<h2>Thank you for conecting 1416 port....</h2>')
}).listen(1416 , () =>{
    console.log("Server Start at http://localhost:1416");
})

fs.open('task1.js' ,(err , result) => {
    if(err)
        console.log(err);
    else
        console.log('File open successfully......');
})