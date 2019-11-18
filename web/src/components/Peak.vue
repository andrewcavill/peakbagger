<template>

  <div v-if="peak">

    <div class="name">{{ peak.name }}</div>

  </div>

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