# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting database..."

Article.delete_all
Author.delete_all


puts "Creating articles..."

article = Article.new(title: 'Dona Laura')

File.open('app/assets/audios/Dona-Laura.mp3') do |f|
  article.audio = f
end

puts "Creating authors..."

author = Author.new(first_name: 'Miguel', last_name: 'Araujo')

article.author = author


puts "Saving..."

author.save!

article.save!

puts "Done!"
