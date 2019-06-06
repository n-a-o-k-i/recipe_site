module Api
  module V1
    class RecipesController < ApplicationController
      def index
        recipes = Recipe.order(id: :asc)
        render json: { status: 'SUCCESS', message: 'loaded recipes', data: recipes }
      end
    end
  end
end