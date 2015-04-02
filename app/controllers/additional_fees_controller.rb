class AdditionalFeesController < ApplicationController
  before_action :set_additional_fee, only: [:show, :edit, :update, :destroy]

  # GET /additional_fees
  # GET /additional_fees.json
  def index
    @additional_fees = AdditionalFee.all
  end

  # GET /additional_fees/1
  # GET /additional_fees/1.json
  def show
  end

  # GET /additional_fees/new
  def new
    @additional_fee = AdditionalFee.new
  end

  # GET /additional_fees/1/edit
  def edit
  end

  # POST /additional_fees
  # POST /additional_fees.json
  def create
    @additional_fee = AdditionalFee.new(additional_fee_params)

    respond_to do |format|
      if @additional_fee.save
        format.html { redirect_to @additional_fee, notice: 'Additional fee was successfully created.' }
        format.json { render :show, status: :created, location: @additional_fee }
      else
        format.html { render :new }
        format.json { render json: @additional_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additional_fees/1
  # PATCH/PUT /additional_fees/1.json
  def update
    respond_to do |format|
      if @additional_fee.update(additional_fee_params)
        format.html { redirect_to @additional_fee, notice: 'Additional fee was successfully updated.' }
        format.json { render :show, status: :ok, location: @additional_fee }
      else
        format.html { render :edit }
        format.json { render json: @additional_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_fees/1
  # DELETE /additional_fees/1.json
  def destroy
    @additional_fee.destroy
    respond_to do |format|
      format.html { redirect_to additional_fees_url, notice: 'Additional fee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional_fee
      @additional_fee = AdditionalFee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additional_fee_params
      params.require(:additional_fee).permit(:name, :amount)
    end
end
