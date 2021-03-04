class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show; end

  # CREATE => new and a create action
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet.id), notice: 'Pet was successfully created.'
    else
      render :new
    end
  end

  # UPDATE => edit and update action
  def edit; end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: 'Pet was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to @pet, notice: 'Pet was successfully destroyed.'
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :found_on, :species, :address)
  end
end
