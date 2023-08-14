class ProtospacesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
  end

  def show
    @name = current_user.name
  end
  
  def destroy
    redirect_to root_path
  end

end
