class AnalytesController < ApplicationController
  before_action :set_analyte, only: [:show, :edit, :update, :destroy]

  # GET /analytes
  # GET /analytes.json
  def index
    @analytes = Analyte.all
  end

  # GET /analytes/1
  # GET /analytes/1.json
  def show
  end

  # GET /analytes/new
  def new
    @analyte = Analyte.new
  end

  # GET /analytes/1/edit
  def edit
  end

  # POST /analytes
  # POST /analytes.json
  def create
    @analyte = Analyte.new(analyte_params)

    respond_to do |format|
      if @analyte.save
        format.html { redirect_to @analyte, notice: 'Analyte was successfully created.' }
        format.json { render :show, status: :created, location: @analyte }
      else
        format.html { render :new }
        format.json { render json: @analyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytes/1
  # PATCH/PUT /analytes/1.json
  def update
    respond_to do |format|
      if @analyte.update(analyte_params)
        format.html { redirect_to @analyte, notice: 'Analyte was successfully updated.' }
        format.json { render :show, status: :ok, location: @analyte }
      else
        format.html { render :edit }
        format.json { render json: @analyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytes/1
  # DELETE /analytes/1.json
  def destroy
    @analyte.destroy
    respond_to do |format|
      format.html { redirect_to analytes_url, notice: 'Analyte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analyte
      @analyte = Analyte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analyte_params
      params.require(:analyte).permit(:analyte_name, :result_range)
    end
end
