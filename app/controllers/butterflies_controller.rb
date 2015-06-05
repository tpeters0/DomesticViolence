class ButterfliesController < ApplicationController
  def index
    @butterflies = Butterfly.all
  end

end
