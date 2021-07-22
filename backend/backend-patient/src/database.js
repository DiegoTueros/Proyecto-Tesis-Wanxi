const mongoose = require('mongoose')

mongoose.connect('mongodb://localhost/wanxi_database', {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    useCreateIndex: true
})
.then(db => {
    console.log(`Connected to MongoDB: ${db.connection.host}`)
})
.catch(err => {
    console.log("Error connecting to DB");
})
