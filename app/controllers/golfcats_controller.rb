class GolfcatsController < ApplicationController
  before_action :set_golfcat, only: [:show, :edit, :update, :destroy]

  # GET /golfcats
  # GET /golfcats.json
  def index
    @golfcats = Golfcat.all
  end

  # GET /golfcats/1
  # GET /golfcats/1.json
  def show
  end

  # GET /golfcats/new
  def new
    @golfcat = Golfcat.new
  end

  # GET /golfcats/1/edit
  def edit
  end

  # POST /golfcats
  # POST /golfcats.json
  def create
    @golfcat = Golfcat.new(golfcat_params)

    respond_to do |format|
      if @golfcat.save
        format.html { redirect_to @golfcat, notice: 'Golfcat was successfully created.' }
        format.json { render :show, status: :created, location: @golfcat }
      else
        format.html { render :new }
        format.json { render json: @golfcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /golfcats/1
  # PATCH/PUT /golfcats/1.json
  def update
    respond_to do |format|
      if @golfcat.update(golfcat_params)
        format.html { redirect_to @golfcat, notice: 'Golfcat was successfully updated.' }
        format.json { render :show, status: :ok, location: @golfcat }
      else
        format.html { render :edit }
        format.json { render json: @golfcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golfcats/1
  # DELETE /golfcats/1.json
  def destroy
    @golfcat.destroy
    respond_to do |format|
      format.html { redirect_to golfcats_url, notice: 'Golfcat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_golfcat
      @golfcat = Golfcat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def golfcat_params
      params.require(:golfcat).permit(:title, :description, :image)
    end
end
