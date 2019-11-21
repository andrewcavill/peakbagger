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

        <div class="elevation">
          <label>Lat/Long:</label>
          {{ peak.latitude }} / {{ peak.longitude }} metres
        </div>

        <div class="grade">
          <label>Grade:</label>
          <b-badge :variant="getGradeBadgeVariant(peak.grade)">{{peak.grade.name}}</b-badge>
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

        <div class="links">
          <label>Links:</label>

        </div>

        <div class="baggedBy">
          <label>Bagged By:</label>

        </div>
        
      </b-col>

      <b-col sm="6" class="text-center">

        <div>
          <img class="photo" :src="getPhotoImageUrl(peak)">
        </div>

        <div class="topomap">
          <iframe 
            width="300" 
            height="300" 
            frameborder="0" 
            scrolling="no" 
            marginheight="0" 
            marginwidth="0" 
            :src="getMapImageUrl(peak)">
          </iframe>
          <br />
          <small>
            <a target="_blank" 
              :href="getMapLinkUrl(peak)" 
              style="text-align:left">
              View Larger Topographic Map
            </a>
          </small>
        </div>

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
    getPhotoImageUrl(peak) {
      return "/images/"+peak.code+".jpg";
    },
    getMapImageUrl(peak) {
      return "https://www.topomap.co.nz/NZTopoMapEmbedded?v=2&ll="+peak.latitude+","+peak.longitude+"&z=14";
    },
    getMapLinkUrl(peak) {
      return "https://www.topomap.co.nz/NZTopoMap?v=2&ll="+peak.latitude+","+peak.longitude+"&z=14";
    },
    getGradeBadgeVariant(grade) {
      return grade.id == 1 ? 'success' :
             grade.id == 2 ? 'warning' :
             'danger';
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
  margin-bottom: 20px;
}

</style>