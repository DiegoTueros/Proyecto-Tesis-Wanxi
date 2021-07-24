const express = require('express');
const morgan = require('morgan');

const app = express();

const Routes = require('./routes');

app.use(express.json());
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));


app.use('/auth', Routes.AuthenticationRoutes);
app.use('/self-registration', Routes.SelfRegistrationRoutes);
app.use('/patient', Routes.AchievementRoutes);
app.use('/patient', Routes.HelpRoutes);
app.use('/patient', Routes.HelpTimesRoutes);
app.use('/question', Routes.QuestionRoutes);
app.use('/option', Routes.OptionRoutes);

module.exports = app