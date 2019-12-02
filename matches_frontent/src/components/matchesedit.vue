<template>
<v-container>
	<v-form
      ref="form"
      v-model="valid"
      lazy-validation
    >
      <v-text-field
        v-model="info.data.team1"
        label="team1"
        required
      ></v-text-field>
  
      <v-text-field
        v-model="info.data.team2"
        label="team2"
        required></v-text-field>
  <v-text-field v-model="info.data.season"
        label="season"
        required
      ></v-text-field>
      <v-text-field
        v-model="info.data.city"
        label="city"
        required
      ></v-text-field>
      <v-text-field
        v-model="info.data.date"
        label="date"
        required
      ></v-text-field>
      <v-text-field
        v-model="info.data.toss_winner"
        label="toss_winner"
        required
      ></v-text-field>
      <v-text-field
        v-model="info.data.toss_decision"
        label="toss_decision"
        required
      ></v-text-field>

      <v-text-field
        v-model="info.data.winner"
        label="winner"
        required
      ></v-text-field>

      <v-text-field
        v-model="info.data.player_of_match"
        label="player_of_match"
        required
      ></v-text-field>

      <v-text-field
        v-model="info.data.venue"
        label="venue"
        required
      ></v-text-field>

      <v-text-field
        v-model="info.data.umpire1"
        label="umpire1"
        required
      ></v-text-field>

      <v-text-field
        v-model="info.data.umpire2"
        label="umpire2"
        required
      ></v-text-field>

      <v-text-field
        v-model="info.data.umpire3"
        label="umpire3"
      ></v-text-field>
  
      <v-checkbox
        v-model="checkbox"
        label="Are you sure that you want to make these changes?"
        required
      ></v-checkbox>
  
      <v-btn
        :disabled="!valid"
        color="success"
        class="mr-4"
        @click="editData()"
      >
        Submit
      </v-btn>
  
    
    </v-form>
    </v-container>
</template>
<script>
import axios from 'axios'
export default {
  name: 'matchesedit',
  data: () => ({
    info:null,
    valid: true
  }),
  mounted(){
		axios.get("http://localhost:3000/matches/"+this.$route.params.id+"?user_email=xseed@codingchallenge.com&user_token=W59hTDGHVysjgajyoK_5")
		.then(response => (this.info = response))
 }
}
 </script>