class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render json: @dogs
  end

  def create
    @dog = Dog.new(name: params[:name], age: params[:age])
    if @dog.valid?
      @dog.save
      redirect_to 'http://localhost:3001'
    else
      redirect_to "http://localhost:3001?errors=#{@dog.errors.full_messages}"
  end

end
