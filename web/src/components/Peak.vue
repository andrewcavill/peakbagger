<template>

  <b-card class="peak" v-if="peak">

    <b-row>

      <b-col sm="6">

        <div class="name">
          {{ peak.name }}
        </div>

        <div class="area">
          {{ peak.area }}, {{ peak.region.name }}
        </div>

        <div class="elevation">
          <label>Elevation:</label>
          {{ peak.elevation }} metres
        </div>

        <div class="grade">
          <label>Grade:</label>
          <b-badge variant="success" v-if="peak.grade.code == 'Easy'">Easy</b-badge>
          <b-badge variant="warning" v-if="peak.grade.code == 'Medium'">Medium</b-badge>
          <b-badge variant="danger" v-if="peak.grade.code == 'Hard'">Hard</b-badge>
        </div>

        <div class="duration">
          <label>Duration:</label>
          {{ peak.duration }}
        </div>

        <div class="access">
          <label>Access:</label>
          {{ peak.access }}
        </div>

        <div class="description">
          <label class="block">Description:</label>
          {{ peak.description }}
        </div>

        <div class="location">
          <label class="block">Location:</label>
          <table>
            <tr>
              <td>NZ Topo 50:</td>
              <td>BH34 58 667</td>
            </tr>
            <tr>
              <td>NZTM Grid Ref:</td>
              <td>E1805837 N5666740</td>
            </tr>
            <tr>
              <td>Lat/Long:</td>
              <td>-39.124201 175.381136</td>
            </tr>
          </table>
        </div>

        <div class="links">
          <label>Links:</label>

        </div>

        <div class="baggedBy">
          <label>Bagged By:</label>

        </div>
        
      </b-col>

      <b-col sm="6">

        <img class="photo" :src="getImageUrl(peak)">

      </b-col>

    </b-row>

  </b-card>

</template>

<script>

import PeakService from "@/services/PeakService";

export default {
  name: "Peak",
  data() {
    return {
      peakId: this.$route.params.peakId,
      peak: null
    };
  },
  methods: {
    getPeak() {
      PeakService.getPeak(this.peakId)
        .then(
          peak => this.peak = peak
        );
    },
    getImageUrl(peak) {
      return "/images/"+peak.code+".jpg";
    }
  },
  mounted() {
    this.getPeak();
  }
};

</script>

<style scoped>

.name {
  font-size: 2em;
  font-weight: bold;
  color: #31798e;
}

.area {
  font-size: 1.2em;
  font-weight: bold;
  margin-bottom: 10px;
  color: #3c3d41;
}

label {
  font-weight: bold;
  margin-right: 5px;
  margin-bottom: 0;
  margin-top: 10px;
  font-size: .9em;
  color: #3c3d41;
}

label.block {
  display: block;
}

.peak {
  background-color: white;
}

.photo {
  width: 100%; 
  max-width:600px;
}

</style>