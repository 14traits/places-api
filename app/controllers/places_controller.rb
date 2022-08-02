class PlacesController < ApplicationController
  def index
    @places = Place.all
    render template: "places/index"
  end

  def create
    @product = Place.new(
      name: params[:name],
      address: params[:address],
    )
    if @product.save
      render template: "places/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Place.find(params[:id])
    render template: "places/show"
  end

  def update
    @product = Place.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.address = params[:address] || @product.address
    if @product.save
      render template: "places/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Place.find(params[:id])
    product.destroy
    render json: { message: "Successfully Destroyed Place" }
  end
end
