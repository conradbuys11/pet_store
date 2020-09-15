require 'date'

class Pet < ApplicationRecord

    def age
        Date.today.year - self.year_of_birth
    end

    def kids_statement #Returns appropriate text based on good_with_kids? for each pet's page.
        if good_with_kids?
            "Good with children"
        else
            "Prefers a home without children"
        end

        #good_with_kids? ? "Good with children" : "Prefers a home without children"
    end

    # def species_capitalized
    #     species.capitalize + "s"
    # end
end
