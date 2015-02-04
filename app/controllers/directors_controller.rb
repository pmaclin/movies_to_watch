class DirectorsController < ApplicationController
  def index
      @directors = Director.all
  end

  def create_row
      @director = Director.new

      @director.name = params["the_name"]
      @director.dob = params["the_dob"]
      @director.bio = params["the_biography"]
      @director.image_url = params["the_image_url"]

      @director.save
  end

  def show
      @director = Director.find_by({ :id => params["id"] })
  end


  def edit_form
        @director = Director.find_by({ :id => params["id"] })
  end

  def update_row
      @director = Director.find_by({ :id => params["id"] })

      @director.name = params["the_name"]
      @director.dob = params["the_dob"]
      @director.bio = params["the_biography"]
      @director.image_url = params["the_image_url"]

      @director.save
  end

  def destroy
      @director = Director.find_by({ :id => params["id"] })

      @director.destroy
  end


end
