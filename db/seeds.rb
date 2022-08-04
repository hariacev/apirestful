# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
filmes = Filme.create([{imagen: 'imgPERRO', titulo: 'ashi', calificacion: '3'}, 
{imagen: 'imgBarco', titulo: 'azul profundo', calificacion: '3'},
{imagen: 'imgMagnum', titulo: '7 mag', calificacion: '4'}
])

10.times do
    Filme.create({
        imagen: Faker::Movie.title,
        titulo: Faker::Movie.title,
        calificacion: rand(1..2)
    })
end

personajes = Personaje.create([{imagen: 'imagen peli', nombre:'Anna', edad: 3, peso: 10.0}])


3.times do
    Personaje.create({
        imagen: Faker::Movie.title,
        nombre: Faker::Movies::Tron.character,
        edad: rand(1..200),
        peso: Faker::Number.decimal(l_digits: 2)

    })
end
