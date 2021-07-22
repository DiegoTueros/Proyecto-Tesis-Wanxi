const express = require('express');
const morgan = require('morgan');

const app = express();

const Routes = require('./routes');

app.use(express.json());
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));


app.use('/auth', Routes.AuthenticationRoutes);
app.use('/patients', Routes.PatientRoutes);


//app.use(require('./routes/therapist'))



//const cors = require('cors')


//app.use(cors);
module.exports = app