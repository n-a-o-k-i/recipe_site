module Api
  module V1
    class RecipesController < ApplicationController
      def index
        recipes = Recipe.order(id: :asc)
        render json: { status: 'SUCCESS', message: 'loaded recipes', data: recipes }
      end

      def show
        ingredients = Ingredient.where(recipe_id: params[:id])
        instructions = Instruction.where(recipe_id: params[:id])
        render json: { status: 'SUCCESS', message: 'loaded the ingredients and instructions', data: ingredients }
        # render json: { status: 'SUCCESS', message: 'loaded the ingredients and instructions', data: [ingredients,instructions] }
      end
    end
  end
end