require 'geocoder'

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
    @business = current_user.businesses.build(business_params)
    #byebug
    # @business.lat = Geocoder.coordinates(@business.address)[0]
    # @business.lng = Geocoder.coordinates(@business.address)[1]
    
    if @business.save
      render json:  BusinessSerializer.new(@business), status: :created
    else
      error_resp = {
        error: @business.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /businesses/1
  def update
    if @business.update(business_params)
      render json:  BusinessSerializer.new(@business), status: :ok
    else
      error_resp = {
        error: @business.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # DELETE /businesses/1
  def destroy
    if @business.destroy
      render json:  { data: "Business successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Business not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_params
      params.require(:business).permit(:name, :description, :open_hours, :email, :phone_number, :favorite, :delivery, :user_id, :category_id, :website, :address1, :city, :state, :postal_code, :address, :lat, :lng)
    end
end
