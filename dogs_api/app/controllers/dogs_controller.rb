class DogsController < ApplicationController

  def index
    if params["search"]
      @dogs = Dog.where("name LIKE ?", "%#{params["search"]}%")
      render json: @dogs
    else
      @dogs = Dog.all
      render json: @dogs
    end
  end

end
