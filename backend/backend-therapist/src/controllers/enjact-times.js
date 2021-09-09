const EnjActTimes = require('../models/enjact-times')

function getAllEnjActTimes(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    EnjActTimes.find(conditions)
        .select('created_at')
        .populate('enjoyable_activities_id', 'situation')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                enjoyableActivitiesTimes: docs.map((doc)=>{
                    return{
                        date: doc.created_at,
                        enjoyableActivities: doc.enjoyable_activities_id.situation
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
    getAllEnjActTimes
};