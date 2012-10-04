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

  def edit
    @cat=Cat.find(params[:id])
  end

  def update
    @cat=Cat.find(params[:id])
    @cat.update_attributes(params[:cat])
    redirect_to root_path
  end
  def show
    @cat=Cat.find(params[:id])
  end
  def destroy
    @cat=Cat.find(params[:id])
    @cat.destroy
    redirect_to root_path
  end

end
