import axios from "axios";

export default {

    getPeaks() {
        return axios
            .get("api/peaks/")
            .then(response => { return response.data })
    }

}