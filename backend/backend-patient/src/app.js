const express = require('express');
const morgan = require('morgan');

const app = express();

const Routes = require('./routes');

app.use(express.json());
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));


app.use('/auth', Routes.AuthenticationRoutes);
app.use('/patient', Routes.SelfRegistrationRoutes);
app.use('/patient', Routes.AchievementRoutes);
app.use('/patient', Routes.HelpRoutes);
app.use('/patient', Routes.HelpTimesRoutes);

module.exports = app