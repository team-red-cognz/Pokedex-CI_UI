<template>
  <div class="home">
    <!-- <input  placeholder="insert name here" /> -->
    <sui-input v-model="inname" placeholder="Search Pokemon Name" />
    <sui-button @click="searchname(inname)">Search</sui-button>
    <sui-divider />

    <table class="ui very basic table" id="box">
      <tbody>
        <tr>
          <td>Pokemon Name:</td>
          <td>{{pokename}}</td>
        </tr>
        <tr>
          <td>Pokemon ID:</td>
          <td>{{pokeid}}</td>
        </tr>
        <tr v-for="ab in pokeablity">
          <td>Ability:</td>
          <td>{{ab}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
// @ is an alias to /src
import homec from "@/components/homec.vue";

export default {
  name: "home",
  components: {
    homec
  },
  data() {
    return {
      inname: "pikachu",
      pokename: "",
      pokeid: "",
      pokeablity: ['']
    };
  },
  methods: {
    searchname(pname) {
      console.log("http://" + window.location.hostname + ":8080/getPokemon?name=" + pname);
      this.$http.get("http://" + window.location.hostname + ":8080/getPokemon?name=" + pname).then(response => {
        this.pokedata = response.body;
        this.pokename = this.pokedata.name
        this.pokeid = this.pokedata.id
        this.pokeablity = this.pokedata.abilities
      });
    }
  }
};
</script>

<style>
#pokedata {
  /* max-width: 50%; */
  /* padding-left: 40% */
}
#box {
  background: whitesmoke;
  /* height: 10em; */
  display: flex;
  align-items: center;
  justify-content: center;
  width: 35%;
  margin: 0 auto;
}
/* .home {
  width: 50% important;
} */
</style>
