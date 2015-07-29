class WordsController < ApplicationController
  before_action :authenticate

  def index
    # @words = Word.all
    @word = Word.where(:cat => "adjective").sample.word + " " + Word.where(:cat => "noun").sample.word
  end

  def show_all
    @word = Word.where(:cat => "adjective").sample.word + " " + Word.where(:cat => "noun").sample.word
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
  end

  def edit
    @word = Word.find(params[:id])
  end

  def create
    @word = Word.new(word_params)
    @word.user = current_user
    if @word.save
      redirect_to '/words/new'
    else
      render 'new'
    end
  end

  def update
    @word = Word.find(params[:id])
    if @word.update_attributes(word_params)
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def destroy
    @word = Word.find(params[:id])
    if @word.delete
      redirect_to current_user
    end
  end

  private

  def word_params
    params.require(:word).permit(:word, :cat, :tense, :genre)
  end

  def authenticate
    unless logged_in?
      redirect_to root_path
    end
  end

end

