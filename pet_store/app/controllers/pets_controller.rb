class PetsController < ApplicationController

    def homepage
    end

    def index
        @pets = nil
        @header_name = params[:species].capitalize
        temp_species = @header_name[0...-1]

        if temp_species == "Pet"
            @pets = Pet.all
        else
            @pets = Pet.where(species: temp_species)
            if @pets == [] #if the species was not found in our list of Pets
                @pets = Pet.all
                @header_name = "Pets"
            end
        end
        render :index #explicit render. will implicitly render name of method if no explicit render is given
    end

    def show
        id = params[:id]
        @pet = Pet.find(id)
    end

    # def by_species
    #     temp_species = params[:species]
    #     @all_of_species = Pet.where("species = ?" params[])
    #     @species_capitalized = temp_species.capitalize + "s"
    # end

    # def dogs
    #     @pets = Pet.where(species: "Dog")
    #     render :index
    # end

    # def cats
    #     @pets = Pet.where(species: "Cat")
    #     render :index
    # end

    # def birds
    #     @pets = Pet.where(species: "Bird")
    #     render :index
    # end

end

/\b?sort_by=.*\b/