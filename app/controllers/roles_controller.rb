class RolesController < ApplicationController
  def index
    @roles = Roles.all
  end

end
