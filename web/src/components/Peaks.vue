<template>
    <div>
        <b-card-group deck v-if="peaks">
            <b-card
            no-body
            class="border-0"
            :img-src="peak.image"
            :img-alt="peak.name"
            img-top
            v-for="peak in peaks"
            :key="peak.id"
            >
              <b-card-body>
                  <div class="name"><b>{{ peak.name }}</b></div>
                  <div class="location">{{ peak.location }}, {{ peak.region.name }}</div>
              </b-card-body>
            </b-card>
        </b-card-group>
    </div>
</template>

<script>
import PeakService from "@/services/PeakService";

export default {
  name: "TodoLists",
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
    }
  },
  mounted() {
    this.getPeaks();
  }
};

</script>

