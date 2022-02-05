class CatsController < ApplicationController

  def index
    cats = Cat.all
    render json: cats
  end

  def create
    cats = Cat.create(cat_params)
    render json: cat
  end

  def update
  end

  def destroy
  end
  
  def cat_params
    params.require(:cat).permit(:name, :age, :enjoys, :image)
  end  
end
