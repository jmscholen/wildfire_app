class WildFiresController < ApplicationController
  before_action :set_wild_fire, only: [:show, :edit, :update, :destroy]

  # GET /wild_fires
  # GET /wild_fires.json
  def index
    @wild_fires = WildFire.all
    @locations = Location.joins(:wild_fires).where('wild_fires.location_id')
  end

  # GET /wild_fires/1
  # GET /wild_fires/1.json
  def show
  end

  # GET /wild_fires/new
  def new
    @wild_fire = WildFire.new
  end

  # GET /wild_fires/1/edit
  def edit
  end

  # POST /wild_fires
  # POST /wild_fires.json
  def create
    @wild_fire = WildFire.new(wild_fire_params)

    respond_to do |format|
      if @wild_fire.save
        format.html { redirect_to @wild_fire, notice: 'Wild fire was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wild_fire }
      else
        format.html { render action: 'new' }
        format.json { render json: @wild_fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wild_fires/1
  # PATCH/PUT /wild_fires/1.json
  def update
    respond_to do |format|
      if @wild_fire.update(wild_fire_params)
        format.html { redirect_to @wild_fire, notice: 'Wild fire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wild_fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wild_fires/1
  # DELETE /wild_fires/1.json
  def destroy
    @wild_fire.destroy
    respond_to do |format|
      format.html { redirect_to wild_fires_url }
      format.json { head :no_content }
    end
  end

  def search
    @wild_fires = WildFire.search(params[:search])
    render :index
  end
    

    # Use callbacks to share common setup or constraints between actions.
  def set_wild_fire
    @wild_fire = WildFire.find(params[:id])
  end




  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def wild_fire_params
    params.require(:wild_fire).permit(:firefighters_deployed, :hazard_level, :location_id, :name)
  end

end
