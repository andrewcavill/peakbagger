<template>
    <div>

        <b-card-group deck v-if="peaks">

            <b-card
            class="border-0"
            :img-src="getImageUrl(peak)"
            :img-alt="peak.name"
            img-top
            v-for="peak in peaks"
            :key="peak.id"
            >

              <b-card-text>

                  <div class="name"><b>{{ peak.name }}</b></div>
                  <div class="location">{{ peak.location }}, {{ peak.region.name }}</div>

                  <b-badge variant="success" v-if="peak.grade.code == 'Easy'">Easy</b-badge>
                  <b-badge variant="warning" v-if="peak.grade.code == 'Medium'">Medium</b-badge>
                  <b-badge variant="danger" v-if="peak.grade.code == 'Hard'">Hard</b-badge>


              </b-card-text>

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
    },
    getImageUrl(peak) {
      return "https://localhost:5001/images/"+peak.code+".jpg";
    }
  },
  mounted() {
    this.getPeaks();
  }
};

</script>

