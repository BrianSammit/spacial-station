class RocketsController < ApplicationController
  before_action :set_rocket, only: %i[ show edit update destroy ]
  before_action :set_categories

  # GET /rockets or /rockets.json
  def index
    @rockets = Rocket.all
  end

  # GET /rockets/1 or /rockets/1.json
  def show
  end

  # GET /rockets/new
  def new
    @rocket = Rocket.new
  end

  # GET /rockets/1/edit
  def edit
  end

  # POST /rockets or /rockets.json
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

  # PATCH/PUT /rockets/1 or /rockets/1.json
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

  # DELETE /rockets/1 or /rockets/1.json
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
    params.require(:rocket).permit(:name, :fuel, :country, :activity, :category_id)
  end

  def set_categories
    @categories = Category.all.order(:name)
  end

end
