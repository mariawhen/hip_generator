class UsersController < ApplicationController
  def index
    @words = Word.all
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new

  end

  def edit
  end
end
