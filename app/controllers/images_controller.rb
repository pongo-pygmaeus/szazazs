class ImagesController < ApplicationController
  def index
    @images = Image.get_image_file_names
  end
end
