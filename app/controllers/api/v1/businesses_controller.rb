class Api::V1::BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]

  # GET /businesses
  def index
    @businesses = Business.all

    #render json: @businesses

    businesses_json = BusinessSerializer.new(@businesses).serializable_hash.to_json
    render json: businesses_json
  end

  # GET /businesses/1
  def show
    #render json: @business
    business_json = BusinessSerializer.new(@business).serializable_hash.to_json
    render json: business_json
  end

  # POST /businesses
  def create
    @business = Business.new(business_params)

    if @business.save
      render json: @business, status: :created, location: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /businesses/1
  def update
    if @business.update(business_params)
      render json: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  # DELETE /businesses/1
  def destroy
    @business.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_params
      params.require(:business).permit(:name, :description, :open_hours, :email, :phone_number, :favorite, :delivery, :user_id, :category_id, :website, :address1, :city, :state, :postal_code, :lat, :lng)
    end
end
