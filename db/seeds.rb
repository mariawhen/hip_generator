# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Word.destroy_all

Word.create(word: "Pretentious", cat: "adjective")
Word.create(word: 'Exorbitant', cat: 'adjective')
Word.create(word: 'Self-righteous', cat: 'adjective')
Word.create(word: 'Dilapidated', cat: 'adjective')
Word.create(word: 'Dazzling', cat: 'adjective')
Word.create(word: 'Enigmatic', cat: 'adjective')
Word.create(word: 'Magnanimous', cat: 'adjective')
Word.create(word: 'Classic', cat: 'adjective')
Word.create(word: 'Pure', cat: 'adjective')
Word.create(word: 'Periwinkle', cat: 'adjective')
Word.create(word: 'Cerulean', cat: 'adjective')
Word.create(word: 'Indigo', cat: 'adjective')
Word.create(word: 'Ardent', cat: 'adjective')
Word.create(word: 'Zealous', cat: 'adjective')
Word.create(word: 'Feverish', cat: 'adjective')
Word.create(word: 'Vehement', cat: 'adjective')
Word.create(word: 'Incandescent', cat: 'adjective')
Word.create(word: 'Smoldering', cat: 'adjective')
Word.create(word: 'Clandestine', cat: 'adjective')


Word.create(word: 'Elephant', cat: 'noun')
Word.create(word: 'Peacock', cat: 'noun')
Word.create(word: 'Worker Ant', cat: 'noun')
Word.create(word: 'Queen Bee', cat: 'noun')
Word.create(word: 'Trout', cat: 'noun')
Word.create(word: 'Mackerel', cat: 'noun')
Word.create(word: 'Blue Fin', cat: 'noun')
Word.create(word: 'Flamingo', cat: 'noun')
Word.create(word: 'Stick', cat: 'noun')
Word.create(word: 'Barrel', cat: 'noun')
Word.create(word: 'Squid', cat: 'noun')
Word.create(word: 'Steer', cat: 'noun')
Word.create(word: 'Maiden', cat: 'noun')
Word.create(word: 'Ox', cat: 'noun')
Word.create(word: 'Gentleman', cat: 'noun')
Word.create(word: 'Anchor', cat: 'noun')
Word.create(word: 'Boot', cat: 'noun')

def generate_words
  Word.where(:cat => "adjective").sample.word + " " + Word.where(:cat => "noun").sample.word
end
