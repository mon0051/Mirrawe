class ImagesController < ApplicationController
  def new
    @image = Image.new
  end
  def show
    @image = Image.find(params[:id])
  end

  def create
    #get image url
    @file_url = params['image']['file_object'].original_filename
    directory = 'app/assets/images/'
    path = File.join(directory, @file_url)
    # Write image File out
    File.open(path, 'wb') { |f| f.write(params['image']['file_object'].read) }

    # save image to db
    @new_image=Image.new(url: @file_url,title: params['image']['title'], alt:params['image']['alt'])
    @new_image.save
    redirect_to @new_image
  end
end
