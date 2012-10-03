class CatsController < ApplicationController
  def index
    @cats=Cat.all
  end

  def new
  @cat=Cat.new
  end

  def create
    Cat.create(params[:cat])
    redirect_to root_path
  end

end
