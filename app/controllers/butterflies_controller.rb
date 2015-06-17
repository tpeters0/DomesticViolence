class ButterfliesController < ApplicationController
  before_action :verify_authenticity_token

  def index
    @butterflies = Butterfly.all
  end

  def show
    @butterfly = Butterfly.find(params[:id])
  end

  def new
    @butterfly = Butterfly.new

    respond_to do |f|
      f.html # new.html.erb
      f.json { render json: @butterfly}
    end
  end

  def create
    @butterfly = Butterfly.new(butterfly_params)

    respond_to do |f|
      if @butterfly.save
        f.html {redirect_to(butterfly_path(@butterfly))}
        f.json {render json: @butterfly, status: :created, location: @butterfly }
      else
        f.html { render action: "new" }
        f.json { render json: @butterfly.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @butterfly = Butterfly.find(params[:id])
  end

  def update
    @butterfly = Butterfly.find(params[:id])
    @butterfly.update(butterfly_params)
    redirect_to(@butterfly)
  end

  def destroy
    @butterfly = Butterfly.find(params[:id])
    @butterfly.destroy
    redirect_to butterflies_path
  end

  private

  def butterfly_params
    params.require(:butterfly).permit(:title, :image)

  end


  # Convert base64 to binary
  def split_base64(uri_str)
    if uri_str.match(%r{^data:(.*?);(.*?),(.*)$})
      uri = Hash.new
      uri[:type] = $1 # "image/gif"
      uri[:encoder] = $2 # "base64"
      uri[:data] = $3 # data string
      uri[:extension] = $1.split('/')[1] # "gif"
      return uri
    else
      return nil
    end
  end

  # Convert data uri to uploaded file. Expects object hash, eg: params[:profile_image]
  def convert_data_uri_to_upload(obj_hash)
    if obj_hash[:remote_image_url].try(:match, %r{^data:(.*?);(.*?),(.*)$})
      image_data = split_base64(obj_hash[:remote_image_url])
      image_data_string = image_data[:data]
      image_data_binary = Base64.decode64(image_data_string)

      temp_img_file = Tempfile.new("data_uri-upload")
      temp_img_file.binmode
      temp_img_file << image_data_binary
      temp_img_file.rewind

      img_params = {:filename => "data-uri-img.#{image_data[:extension]}", :type => image_data[:type], :tempfile => temp_img_file}
      uploaded_file = ActionDispatch::Http::UploadedFile.new(img_params)

      obj_hash[:image] = uploaded_file
      obj_hash.delete(:remote_image_url)
    end

    return obj_hash
  end









end
