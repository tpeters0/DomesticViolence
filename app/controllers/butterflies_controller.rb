class ButterfliesController < ApplicationController
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
      if @butterfly.save
        redirect_to 'butterflies'
      else
        render 'new'
      end
  end


  def edit
    @butterfly = Butterfly.find(params[:id])
  end

  def update
    @butterfly = Butterfly.find(params[:id])
    @butterfly.update(profile_params)
    redirect_to(@butterfly)
  end

  def destroy
    @butterfly = Butterfly.find(params[:id])
    @butterfly.destroy
    redirect_to(butterflies_path)
  end


  private
    def butterfly_params
      params.require(:butterfly).permit(:name, :image)
    end
  end
