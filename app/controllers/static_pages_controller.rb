class StaticPagesController < ApplicationController
  def home
    @word = Word.where(:cat => "adjective", 'user_id' => nil).sample.word + " " + Word.where(:cat => "noun", 'user_id' => nil).sample.word
    @words = Word.where('user_id' => nil)
  end
end
