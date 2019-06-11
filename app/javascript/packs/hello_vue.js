import Vue from 'vue/dist/vue.esm.js'
import App from '../app.vue'
import axios from 'axios';

new Vue({
	el: '#recipes',
	data: {
		ingredients: {},
	},
	methods: {
		getIngredients(id){
			axios.get(`//localhost:3000/api/v1/recipes/${id}`)
			.then(res => {
				var ingredients = [];

				for (var i = 0; i < res.data.data.length; i++) { 
					ingredients.push(res.data.data[i].name);
					ingredients.push(res.data.data[i].quantity_and_unit);
				}

				this.ingredients = ingredients;
			});
		}
	}
});