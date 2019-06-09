module Admin
	class RecipesController < ApplicationController
		def new
			@recipes = Recipe.order(id: :asc)
			# render json: { status: 'SUCCESS', message: 'loaded recipes', data: @recipes }
		end
	end
end