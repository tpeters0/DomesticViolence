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



      File.open("#{Rails.root}/public/uploads/somefilename.png", 'wb') do |f|
         f.write(params[:image].read)
       end




  private
    def butterfly_params
      params.require(:butterfly).permit(:name)
    end
  end

end
