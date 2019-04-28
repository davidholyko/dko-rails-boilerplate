# frozen_string_literal: true

class ResourcesController < ApplicationController
  before_action :set_resource, only: %i[show update destroy]

  # GET /resources
  def index
    @resources = Resource.all

    render json: @resources
  end

  # GET /resources/1
  def show
    # With OpenReadController --> remove before_action show
    render json: @resource
  end

  # POST /resources
  def create
    @resource = current_user.resources.new(resource_params)

    if @resource.save
      render json: @resource, status: :created, location: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resources/1
  def update
    if @resource.update(resource_params)
      render json: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_resource
    @resource = current_user.resources.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resource_params
    params.require(:resource).permit(:field0, :field1)
  end
end
