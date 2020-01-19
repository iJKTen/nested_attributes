class PeopleController < ApplicationController
    def new
        @person = Person.new
        @person.addresses.build
    end

    def create
        @person = Person.new(person_params)
        if @person.save
            redirect_to @person
        else
            render 'new'
        end
    end

    private
        def person_params
            params.require(:person).permit(:name, 
                        addresses_attributes: [:street_address1, :street_address2, :city])
        end
end
