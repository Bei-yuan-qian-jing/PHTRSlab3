class PotholelistsController < ApplicationController
  before_action :set_potholelist, only: [:show, :edit, :update, :destroy]

  # GET /potholelists
  # GET /potholelists.json
  def index
    @potholelists = Potholelist.all
  end

  # GET /potholelists/1
  # GET /potholelists/1.json
  def show
  end

  # GET /potholelists/new
  def new
    @potholelist = Potholelist.new
  end

  # GET /potholelists/1/edit
  def edit
  end

  # POST /potholelists
  # POST /potholelists.json
  def create
    @potholelist = Potholelist.new(potholelist_params)

    respond_to do |format|
      if @potholelist.save
        format.html { redirect_to @potholelist, notice: 'Potholelist was successfully created.' }
        format.json { render :show, status: :created, location: @potholelist }
      else
        format.html { render :new }
        format.json { render json: @potholelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potholelists/1
  # PATCH/PUT /potholelists/1.json
  def update
    respond_to do |format|
      if @potholelist.update(potholelist_params)
        format.html { redirect_to @potholelist, notice: 'Potholelist was successfully updated.' }
        format.json { render :show, status: :ok, location: @potholelist }
      else
        format.html { render :edit }
        format.json { render json: @potholelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potholelists/1
  # DELETE /potholelists/1.json
  def destroy
    @potholelist.destroy
    respond_to do |format|
      format.html { redirect_to potholelists_url, notice: 'Potholelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potholelist
      @potholelist = Potholelist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potholelist_params
      params.require(:potholelist).permit(:id, :address, :size, :location, :district, :priority)
    end
end
