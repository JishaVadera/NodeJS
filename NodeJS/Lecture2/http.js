// http module

const http = require('http');

// const server = http.createServer((req,res) => {
//     // res.setHeader("content-type" , 'text/html');
//     // res.setHeader("dummy" , "how are you?");
//     res.setHeader("content-type" , 'application/json');
//     res.write('Welocome to NodeJs');
//     // res.end('<h1> Sever is disconnected </h1>');
//     res.end('<h2>End , Thank you</h2>');
// })

const server = http.createServer();
server.on("request" , (req,res) => {
    // res.setHeader("content-type" , 'text/html');
    // res.write('Welocome to NodeJs');
    // res.end('<h1>End , Thank You</h1>');
    res.setHeader("dummy" , "hello world");
    res.setHeader("content-type" , 'application/json');
    res.end('<h1>Ended</h1>');
})

server.listen(1412, () => {
    console.log('Server is running on port 1412 at http://localhost:1412');
});