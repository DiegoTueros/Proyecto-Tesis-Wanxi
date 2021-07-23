const HelpTimes = require('../models/help-times')

function getAllHelpTimes(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    HelpTimes.find(conditions)
        .select('created_at')
        .populate('help_id', 'situation')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                helpTimes: docs.map((doc)=>{
                    console.log(doc)
                    return{
                        date: doc.created_at,
                        help: doc.help_id.situation
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
    getAllHelpTimes
};