const http = require('http');
const data = [
    {
        id:1 , name:"jony" , age:11
    },
    {   
        id:2 , name:"john" , age:22
    },
    {
        id:3 , name:"jane" , age:33
    },
    {
        id:4 , name:"jim" , age:44
    }
]

const server = http.createServer();

server.on('request', (req, res) => {
    // console.log(req.url);
    let item = req.url.split("/");
    console.log(item);
    if(item[1] === "user"){
        res.setHeader("Content-type" , "text/html");
        res.write('<h2>Welcome to User Page </h2>');
        res.end();
    }
    else if(item[1] === "admin"){
        res.setHeader("Content-type" , "text/html");
        res.write('<h2>Welcome to Admin Page</h2>');
        res.end();
    }
    else if(item[1] === "bff"){
        res.setHeader("Content-type" , "application/json");
        if(item.length === 3){
            let friIndex =+item[2];
            res.write(JSON.stringify(data.filter(e=>e.id === friIndex)));
        }
        else{
            res.write(JSON.stringify(data));
            res.end();
        }
    }
    else{
        res.setHeader("Content-type","text/html");
        res.write('<h2 style = "color:blue" > Page not found................ </h2>');
        res.end();
    }
})
server.listen(3000, () => {
    console.log('server is running on port 3000 at http://127.0.0.1:3000');
})