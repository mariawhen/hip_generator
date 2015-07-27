class StaticPagesController < ApplicationController
  def home
    @word = Word.where(:cat => "adjective").sample.word + " " + Word.where(:cat => "noun").sample.word
  end
end
