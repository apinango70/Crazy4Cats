# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creando registros'

# seed.rb

20.times do
  Article.create(
    title: Faker::Book.title,
    description: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs.join("\n\n"),
    user_id: 1
  )
end

puts 'Registros creado en la bd'

puts 'Creando comentarios'

# Asociar un comentario a cada artículo
Article.all.each do |article|
  article.comments.create(
    content: Faker::Lorem.sentence,
    user_id: 1
  )
end

puts 'Comentarios agregados'
