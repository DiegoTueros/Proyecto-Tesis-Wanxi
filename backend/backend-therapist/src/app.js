const express = require('express');
const morgan = require('morgan');

const app = express();

const Routes = require('./routes');

app.use(express.json());
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));


app.use('/auth', Routes.AuthenticationRoutes);
app.use('/patients', Routes.PatientRoutes);
app.use('/patients', Routes.SelfRegistrationRoutes);
app.use('/patients', Routes.AchievementRoutes);
app.use('/patients', Routes.HelpRoutes);
app.use('/patients', Routes.HelpTimesRoutes);
app.use('/patients', Routes.QuestionRoutes);
app.use('/patients/question', Routes.OptionRoutes);
app.use('/patients', Routes.BreathingTimesRoutes);
app.use('/patients', Routes.EnjoyableActivitiesRoutes);
app.use('/patients', Routes.EnjActTimesRoutes);
app.use('/patients', Routes.ImaginalExposureRoutes);
app.use('/patients', Routes.ImgExpTimesRoutes);
app.use('/patients', Routes.ChallengeRoutes);
app.use('/patients', Routes.ChallengeTimesRoutes);
module.exports = app