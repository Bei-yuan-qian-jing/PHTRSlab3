class DamagereportsController < ApplicationController
  before_action :set_damagereport, only: [:show, :edit, :update, :destroy]

  # GET /damagereports
  # GET /damagereports.json
  def index
    @damagereports = Damagereport.all
  end

  # GET /damagereports/1
  # GET /damagereports/1.json
  def show
  end

  # GET /damagereports/new
  def new
    @damagereport = Damagereport.new
  end

  # GET /damagereports/1/edit
  def edit
  end

  # POST /damagereports
  # POST /damagereports.json
  def create
    @damagereport = Damagereport.new(damagereport_params)

    respond_to do |format|
      if @damagereport.save
        format.html { redirect_to @damagereport, notice: 'Damagereport was successfully created.' }
        format.json { render :show, status: :created, location: @damagereport }
      else
        format.html { render :new }
        format.json { render json: @damagereport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /damagereports/1
  # PATCH/PUT /damagereports/1.json
  def update
    respond_to do |format|
      if @damagereport.update(damagereport_params)
        format.html { redirect_to @damagereport, notice: 'Damagereport was successfully updated.' }
        format.json { render :show, status: :ok, location: @damagereport }
      else
        format.html { render :edit }
        format.json { render json: @damagereport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /damagereports/1
  # DELETE /damagereports/1.json
  def destroy
    @damagereport.destroy
    respond_to do |format|
      format.html { redirect_to damagereports_url, notice: 'Damagereport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_damagereport
      @damagereport = Damagereport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def damagereport_params
      params.require(:damagereport).permit(:name, :address, :tel, :type, :cost)
    end
end
