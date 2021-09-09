const ChallengeTimes = require('../models/challenge-times')

function getAllChallengeTimes(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    ChallengeTimes.find(conditions)
        .select('created_at')
        .populate('challenge_id', 'situation')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                challengeTimes: docs.map((doc)=>{
                    return{
                        date: doc.created_at,
                        challenge: doc.challenge_id.situation
                    }
                })
            };
            res.status(200).json(response);
        })
        .catch((err) => {
            res.status(500).json({
              message:
                'Error interno de servidor, reintente en unos minutos por favor',
              error: err,
            });
        });
}
module.exports = {
    getAllChallengeTimes
};