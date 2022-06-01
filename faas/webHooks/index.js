const axios = require('axios')
const qs = require('qs')
exports.main = async (event) => {
    const url = ''
    axios
        .post(url, qs.stringify({ msg: event }))
        .then(() => {
            return {
                "status": "ok",
                "msg": "success"
            }
        })
        .catch(error => {
            console.error(error)
            return {
                "status": "error",
                "msg": error
            }
        })
    return {
        "status": "undefined",
        "msg": "none"
    }
}