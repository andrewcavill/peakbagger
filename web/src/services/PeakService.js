import axios from "axios";

export default {

    getPeaks() {
        return axios
            .get("api/peaks/")
            .then(response => { return response.data })
    },

    getPeak(peakId) {
        return axios
            .get("api/peaks/"+peakId)
            .then(response => { return response.data })
    }

}