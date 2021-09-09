const express = require('express');
const morgan = require('morgan');

const app = express();

const Routes = require('./routes');

app.use(express.json());
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));


app.use('/auth', Routes.AuthenticationRoutes);
app.use('/self-registration', Routes.SelfRegistrationRoutes);
app.use('/achievement', Routes.AchievementRoutes);
app.use('/help', Routes.HelpRoutes);
app.use('/help-times', Routes.HelpTimesRoutes);
app.use('/question', Routes.QuestionRoutes);
app.use('/option', Routes.OptionRoutes);
app.use('/breathing-times', Routes.BreathingTimesRoutes);
app.use('/enjoyable-activities', Routes.EnjoyableActivitiesRoutes);
app.use('/enjact-times', Routes.EnjActTimesRoutes);
app.use('/imaginal-exposure', Routes.ImaginalExposureRoutes);
app.use('/imgexp-times', Routes.ImgExpTimesRoutes);
app.use('/challenge', Routes.ChallengeRoutes);
app.use('/challenge-times', Routes.ChallengeTimesRoutes);
module.exports = app