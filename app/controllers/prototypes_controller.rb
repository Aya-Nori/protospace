class PrototypesController < ApplicationController
  def index
  end

  def create
  end

  def new
    @prototype = Prototype.new
  end
end
