class RocketsController < ApplicationController
  before_action :set_rocket, only: %i[ show edit update destroy ]
  before_action :set_categories

  def index
    @rockets = Rocket.all
  end

  def show
  end

  def new
    @rocket = Rocket.new
  end

  def edit
  end

  def create
    @rocket = Rocket.new(rocket_params)

    respond_to do |format|
      if @rocket.save
        format.html { redirect_to rocket_url(@rocket), notice: "Rocket was successfully created." }
        format.json { render :show, status: :created, location: @rocket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rocket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rocket.update(rocket_params)
        format.html { redirect_to rocket_url(@rocket), notice: "Rocket was successfully updated." }
        format.json { render :show, status: :ok, location: @rocket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rocket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rocket.destroy

    respond_to do |format|
      format.html { redirect_to rockets_url, notice: "Rocket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_rocket
    @rocket = Rocket.find(params[:id])
  end

  def rocket_params
    params.require(:rocket).permit(:name, :fuel, :country, :activity, :category_id , :img_url)
  end

  def set_categories
    @categories = Category.all.order(:name)
  end

end
