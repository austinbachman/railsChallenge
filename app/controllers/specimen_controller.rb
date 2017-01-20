class SpecimenController < ApplicationController
  before_action :set_speciman, only: [:show, :edit, :update, :destroy]

  # GET /specimen
  # GET /specimen.json
  def index
    @specimen = Speciman.all
  end

  # GET /specimen/1
  # GET /specimen/1.json
  def show
  end

  # GET /specimen/new
  def new
    @speciman = Speciman.new
  end

  # GET /specimen/1/edit
  def edit
  end

  # POST /specimen
  # POST /specimen.json
  def create
    @speciman = Speciman.new(speciman_params)

    respond_to do |format|
      if @speciman.save
        format.html { redirect_to @speciman, notice: 'Speciman was successfully created.' }
        format.json { render :show, status: :created, location: @speciman }
      else
        format.html { render :new }
        format.json { render json: @speciman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specimen/1
  # PATCH/PUT /specimen/1.json
  def update
    respond_to do |format|
      if @speciman.update(speciman_params)
        format.html { redirect_to @speciman, notice: 'Speciman was successfully updated.' }
        format.json { render :show, status: :ok, location: @speciman }
      else
        format.html { render :edit }
        format.json { render json: @speciman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specimen/1
  # DELETE /specimen/1.json
  def destroy
    @speciman.destroy
    respond_to do |format|
      format.html { redirect_to specimen_url, notice: 'Speciman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speciman
      @speciman = Speciman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speciman_params
      params.require(:speciman).permit(:sample_name, :date_received, :sample_type)
    end
end
