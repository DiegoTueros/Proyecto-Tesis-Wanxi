require('./database');

const http = require('http');
const app = require('./app');

const PORT = 4000;
const server = http.createServer(app);

server.listen(PORT, () => {
    console.log(`Server is listening on ${PORT}`);
})

/*const app = require('./app');
const { connect } = require ('./database')


async function main(){
   //Database connection
   await connect();
   //Express aplication
   await app.listen(4000)
   console.log("Server on localhost: 4000")
   
   //console.log('server on port 6000: Connected')
}


main();*/