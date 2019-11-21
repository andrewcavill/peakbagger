<template>

  <b-card-group deck v-if="peaks">

    <b-card
      no-body
      class="border-0"
      :img-src="getImageUrl(peak)"
      :img-alt="peak.name"
      img-top
      img-fluid
      v-for="peak in peaks"
      :key="peak.id"
      >

      <b-card-body>

        <div class="name">{{ peak.name }}</div>

        <div class="area">{{ peak.area }}, {{ peak.region.name }}</div>

        <div class="elevation">{{ peak.elevation }} metres</div>

        <div class="grade">
          <b-badge :variant="getGradeBadgeVariant(peak.grade)">{{peak.grade.name}}</b-badge>
        </div>

      </b-card-body>

      <b-card-footer>

        <div class="row">
          <div class="col-sm">
            <router-link :to="'/peaks/'+peak.id"><b-button style="width:100%" size="sm">View</b-button></router-link>
            
          </div>
          <div class="col-sm">
            <b-button style="width:100%" href="#" size="sm">Bag</b-button>
          </div>
        </div>

      </b-card-footer>

    </b-card>

  </b-card-group>

</template>

<script>

import PeakService from "@/services/PeakService";

export default {
  name: "Peaks",
  data() {
    return {
      peaks: null
    };
  },
  methods: {
    getPeaks() {
      PeakService.getPeaks()
        .then(
          peaks => this.peaks = peaks
        );
    },
    getImageUrl(peak) {
      return "/images/"+peak.code+".jpg";
    },
    getGradeBadgeVariant(grade) {
      return grade.id == 1 ? 'success' :
             grade.id == 2 ? 'warning' :
             'danger';
    }
  },
  mounted() {
    this.getPeaks();
  }
};

</script>

<style scoped>

.name {
  font-size: 1.5em;
  font-weight: bold;
  color: #31798e;
}

.card-footer {
  background-color: white !important;
  border-width: 0 !important;
}

.btn-secondary  {
  background-color: white !important;
  border-color: #31798e !important;
  color: #31798e !important;
}

.btn-secondary:hover {
  background-color: #5085a5 !important;
  border-color: #5085a5 !important;
  color: white !important;
}

</style>