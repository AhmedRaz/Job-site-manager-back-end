class Api::V1::ImagesController < ApplicationController
  before_action :set_image, only: [:show, :update]

# GET /images

def index
   @images = Image.filter(params.slice(:job))
  render json: @images
end

# GET /images/1
def show
  render json: @image
end

# POST /images
def create
  @image = Image.new(image_params)

  if @image.save
    render json: @image, status: :created
  else
    render json: @image.errors, status: :unprocessable_entity
  end
end

# PATCH/PUT /images/1
def update
  if @image.update(image_params)
    render json: @image
  else
    render json: @image.errors, status: :unprocessable_entity
  end
end

# # DELETE /images/1
# def destroy
#   @image.destroy
# end

private
  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:image_name, :job_id, :image_data)
  end
end
