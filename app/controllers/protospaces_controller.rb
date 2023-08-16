class ProtospacesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
  end

  def show
    @name = current_user.name
  end
  
  def new
  end

  def destroy
    redirect_to root_path
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

end
