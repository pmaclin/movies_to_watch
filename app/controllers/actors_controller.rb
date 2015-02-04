class ActorsController < ApplicationController
    def index
        @actors = Actor.all
    end

    def create_row
      @actor = Actor.new

      @actor.name = params["the_name"]
      @actor.dob = params["the_dob"]
      @actor.bio = params["the_biography"]
      @actor.image_url = params["the_image_url"]

      @actor.save
    end

    def show
      @actor = Actor.find_by({ :id => params["id"] })
    end

    def edit_form
      @actor = Actor.find_by({ :id => params["id"] })
    end

    def update_row
      @actor = Actor.find_by({ :id => params["id"] })

      @actor.name = params["the_name"]
      @actor.dob = params["the_dob"]
      @actor.bio = params["the_biography"]
      @actor.image_url = params["the_image_url"]

      @actor.save
    end

    def destroy
      @actor = Actor.find_by({ :id => params["id"] })

      @actor.destroy
    end


end
