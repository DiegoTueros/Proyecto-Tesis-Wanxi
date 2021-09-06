const BreathingTimes = require('../models/breathing-times')

function getAllBreathingTimes(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    BreathingTimes.find(conditions)
        .select('created_at')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                helpTimes: docs.map((doc)=>{
                    return{
                        date: doc.created_at,
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
    getAllBreathingTimes
};