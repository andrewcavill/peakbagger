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

        <div class="location">{{ peak.location }}, {{ peak.region.name }}</div>

        <div class="elevation">750 metres</div>

        <div class="grade">
          <b-badge variant="success" v-if="peak.grade.code == 'Easy'">Easy</b-badge>
          <b-badge variant="warning" v-if="peak.grade.code == 'Medium'">Medium</b-badge>
          <b-badge variant="danger" v-if="peak.grade.code == 'Hard'">Hard</b-badge>
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
    }
  },
  mounted() {
    this.getPeaks();
  }
};

</script>

<style>
.name {
  font-size: 1.2em;
  font-weight: bold;
}
.card-footer {
  background-color: white !important;
  border-width: 0 !important;
}
.btn-secondary  {
  background-color: white !important;
  border-color: #46865e !important;
  color: #46865e !important;
}
.btn-secondary:hover {
  background-color: #46865e !important;
  border-color: #46865e !important;
  color: white !important;
}
</style>