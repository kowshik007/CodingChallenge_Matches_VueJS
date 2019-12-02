<template>
  <div id="app">
    <v-app id="inspire">
    <div>
      <v-toolbar>
        <v-toolbar-title to="http://localhost:8000">Matches FrontEnd</v-toolbar-title>
  
        <v-spacer></v-spacer>
  
        <v-toolbar-items>
          <v-btn text>AboutUs</v-btn>
          <v-btn text>ContactUs</v-btn>
        </v-toolbar-items>
  
        <template v-if="$vuetify.breakpoint.smAndUp">
        <v-form>
          <input id="field1" type="text" v-model="ThisIsField1" autofocus>
          <v-btn icon @click="keymonitor">
            <v-icon>mdi-magnify</v-icon>
          </v-btn>
        </v-form>
          <v-btn icon>
            <v-icon>mdi-delete-circle</v-icon>
          </v-btn>
          <v-btn icon>
            <v-icon>mdi-plus-circle</v-icon>
          </v-btn>
        </template>
      </v-toolbar>
    </div>
    <router-view/>
  </v-app>
  </div>
</template>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: justify;
  color: #2c3e50;
}
#nav {
  padding: 30px;
  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
<script>
  export default {
  data: () => ({
    ThisIsField1:null
  }),
  methods: {
    keymonitor: function() {
      window.location.replace("http://localhost:8080/matches/search/"+this.ThisIsField1);
    }
  }
}
</script>