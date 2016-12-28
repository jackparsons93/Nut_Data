class NutDataController < ApplicationController
  before_action :set_nut_datum, only: [:show, :edit, :update, :destroy]

  # GET /nut_data
  # GET /nut_data.json
  def import  
    NutDatum.import(params[:file])  
  end

  def index
    @nut_data = NutDatum.all
  end

  # GET /nut_data/1
  # GET /nut_data/1.json
  def show
  end

  # GET /nut_data/new
  def new
    @nut_datum = NutDatum.new
  end

  # GET /nut_data/1/edit
  def edit
  end

  # POST /nut_data
  # POST /nut_data.json
  def create
    @nut_datum = NutDatum.new(nut_datum_params)

    respond_to do |format|
      if @nut_datum.save
        format.html { redirect_to @nut_datum, notice: 'Nut datum was successfully created.' }
        format.json { render :show, status: :created, location: @nut_datum }
      else
        format.html { render :new }
        format.json { render json: @nut_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nut_data/1
  # PATCH/PUT /nut_data/1.json
  def update
    respond_to do |format|
      if @nut_datum.update(nut_datum_params)
        format.html { redirect_to @nut_datum, notice: 'Nut datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @nut_datum }
      else
        format.html { render :edit }
        format.json { render json: @nut_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nut_data/1
  # DELETE /nut_data/1.json
  def destroy
    @nut_datum.destroy
    respond_to do |format|
      format.html { redirect_to nut_data_url, notice: 'Nut datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nut_datum
      @nut_datum = NutDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nut_datum_params
      params.require(:nut_datum).permit(:ndb_do, :nutr_no, :nutr_val, :num_data_pts, :std_error, :src_cd, :deriv_cd, :ref_ndb_no, :add_nutr_mark, :num_studies, :min, :max, :df, :low_eb, :stat_cmt)
    end
end
