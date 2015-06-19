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

    respond_to do |f|
      if @butterfly.save
        f.html { redirect_to(butterfly_path(@butterfly)) }
        f.json { render json: @butterfly }
      else
        f.html { render :new }
        f.json { render json: @butterfly}
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

end
