class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      # show the 'new' form again
      # render 'new.html.erb'
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
