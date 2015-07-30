class StaticPagesController < ApplicationController
  def home
    # Used to generate random word (ajective, noun)
    @word = Word.where(:cat => "adjective", 'user_id' => nil).sample.word + " " + Word.where(:cat => "noun", 'user_id' => nil).sample.word
    # If user is not logged it, generator only shows words from general database!!!
    @words = Word.where('user_id' => nil)
  end
end
