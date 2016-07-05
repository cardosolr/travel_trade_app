class RegMonthsController < ApplicationController
  before_action :set_reg_month, only: [:show, :edit, :update, :destroy]

  def index
  	@reg_months = Reg_months.all
  end

  def show
  end

  def new
  	@reg_month = Reg_months.new
  	@regions = Regions.all
    @months = Months.all
  end

  def edit
  end

  def create
    @reg_month = Reg_months.new(regmonth_params)

    respond_to do |format|
      if @reg_month.save
        format.html { redirect_to reg_months_path, notice: 'Data was successfully created.' }
        format.json { render :show, status: :created, location: @reg_month }
      else
        format.html { render :new }
        format.json { render json: @reg_month.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reg_month.update(regmonth_params)
        format.html { redirect_to @reg_month, notice: 'Data was successfully updated.' }
        format.json { render :show, status: :ok, location: @reg_month }
      else
        format.html { render :edit }
        format.json { render json: @reg_month.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reg_month.destroy
    respond_to do |format|
      format.html { redirect_to reg_months_url, notice: 'Data was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_month
      @reg_month = Reg_month.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regmonth_params
      params.require(:reg_month).permit(:month_id, :region_id, :quantity, :total, :pecchange, :marketshare)
    end

end
