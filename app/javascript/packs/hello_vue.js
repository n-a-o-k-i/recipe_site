import Vue from 'vue/dist/vue.esm.js'
import App from '../app.vue'
import axios from 'axios';

new Vue({
  el: '#recipes',
  data: {
    recipeInfo: {},
  },
  methods: {
    setRecipeInfo(id){
      axios.get(`//localhost:3000/api/v1/recipes/${id}`)
        .then(res => {
          console.log(res.data)
          this.recipeInfo = res.data;
        });
    }
  }
});