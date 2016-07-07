class RegMonthsController < ApplicationController
  before_action :set_reg_month, only: [:show, :edit, :update, :destroy]

  def index
  	@regmonths = RegMonth.all
    @regions = Region.all
    @months = Month.all
  end

  def show
  end

  def new
  	@regmonth = RegMonth.new
  	@regions = Region.all
    @months = Month.all
  end

  def edit
  end

  def create
    @regmonth = RegMonth.new(regmonth_params)

    respond_to do |format|
      if @regmonth.save
        format.html { redirect_to reg_months_path, notice: 'Data was successfully created.' }
        format.json { render :show, status: :created, location: @regmonth }
      else
        format.html { render :new }
        format.json { render json: @regmonth.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @regmonth.update(regmonth_params)
        format.html { redirect_to @regmonth, notice: 'Data was successfully updated.' }
        format.json { render :show, status: :ok, location: @regmonth }
      else
        format.html { render :edit }
        format.json { render json: @regmonth.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @regmonth.destroy
    respond_to do |format|
      format.html { redirect_to reg_months_url, notice: 'Data was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_month
      @regmonth = RegMonth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regmonth_params
      params.require(:reg_month).permit(:month_id, :region_id, :quantity, :total, :pecchange, :marketshare)
    end

end
