class PetsController < ApplicationController

    def homepage
    end

    def index
        @pets = Pet.all
        render :index
    end

    def show
        id = params[:id]
        @pet = Pet.find(id)
    end

    def by_species
        temp_species = params[:species]
        @all_of_species = Pet.where("species = #{temp_species}")
        @species_capitalized = temp_species.capitalize + "s"
    end

end