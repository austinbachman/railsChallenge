class HospitalAnalytesController < ApplicationController
  before_action :set_hospital_analyte, only: [:show, :edit, :update, :destroy]

  # GET /hospital_analytes
  # GET /hospital_analytes.json
  def index
    @hospital_analytes = HospitalAnalyte.all
  end

  # GET /hospital_analytes/1
  # GET /hospital_analytes/1.json
  def show
  end

  # GET /hospital_analytes/new
  def new
    @hospital_analyte = HospitalAnalyte.new
  end

  # GET /hospital_analytes/1/edit
  def edit
  end

  # POST /hospital_analytes
  # POST /hospital_analytes.json
  def create
    @hospital_analyte = HospitalAnalyte.new(hospital_analyte_params)

    respond_to do |format|
      if @hospital_analyte.save
        format.html { redirect_to @hospital_analyte, notice: 'Hospital analyte was successfully created.' }
        format.json { render :show, status: :created, location: @hospital_analyte }
      else
        format.html { render :new }
        format.json { render json: @hospital_analyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_analytes/1
  # PATCH/PUT /hospital_analytes/1.json
  def update
    respond_to do |format|
      if @hospital_analyte.update(hospital_analyte_params)
        format.html { redirect_to @hospital_analyte, notice: 'Hospital analyte was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital_analyte }
      else
        format.html { render :edit }
        format.json { render json: @hospital_analyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_analytes/1
  # DELETE /hospital_analytes/1.json
  def destroy
    @hospital_analyte.destroy
    respond_to do |format|
      format.html { redirect_to hospital_analytes_url, notice: 'Hospital analyte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_analyte
      @hospital_analyte = HospitalAnalyte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_analyte_params
      params.require(:hospital_analyte).permit(:hospital, :analyte)
    end
end
