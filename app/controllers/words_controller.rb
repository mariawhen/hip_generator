class WordsController < ApplicationController
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
    if @word.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def update
    @word = Word.new(word_params)
    if @word.update_attributes
      redirect_to 'words/index'
    else
      render 'edit'
    end
  end

  def destroy
    @word = Word.find(params[:id]).destroy
    redirect_to words_path
  end

  private

  def word_params
    params.require(:word).permit(:word, :cat, :tense, :genre)
  end

end

