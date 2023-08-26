class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    Prototype.create(prototype_params)
    # redirect_to root_path
    redirect_to action: :index
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

end
