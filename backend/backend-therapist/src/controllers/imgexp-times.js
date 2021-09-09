const ImgExpTimes = require('../models/imgexp-times')

function getAllImgExpTimes(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    ImgExpTimes.find(conditions)
        .select('created_at')
        .populate('imaginal_exposure_id', 'situation')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                imaginalExposureTimes: docs.map((doc)=>{
                    return{
                        date: doc.created_at,
                        imaginalExposure: doc.imaginal_exposure_id.situation
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
    getAllImgExpTimes
};