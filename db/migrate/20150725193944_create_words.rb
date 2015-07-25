class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string   :word
      t.string   :cat
      t.string   :tense
      t.string   :genre
      t.integer  :user_id

      t.timestamps null: false
    end
  end
end
