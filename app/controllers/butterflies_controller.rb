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

  end

  def create
    @butterfly = Butterfly.new(butterfly_params)

      # File.open("#{Rails.root}/public/uploads/original_filename.png", 'wb') do |f|
      #   f.write(params[:butterfly].read)
      #   if params[:butterfly].try(:original_filename) == 'blob'
      #     params[:butterfly].original_filename << '.png'
      #   end
      #
      #   Butterfly.create!(butterfly: params[:butterfly])
      # end

      if @butterfly.save
        redirect_to(butterfly_path(@butterfly))
      else
        render :new
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



end
