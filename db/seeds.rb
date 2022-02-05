# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cats = [
  {
    name: 'Lola',
    age: 10,
    enjoys: 'food',
    image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.guideposts.org%2Ffriends-and-family%2Fpets%2Fcats%2Fthe-black-cat-that-changed-her-mind&psig=AOvVaw2kQsfnYaNDebdFM_OGZi_4&ust=1644082891877000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPjw66TM5vUCFQAAAAAdAAAAABAD'
  },
  {
    name: 'Garfield',
    age: 43,
    enjoys: 'lasagna',
    image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.guideposts.org%2Ffriends-and-family%2Fpets%2Fcats%2Fthe-black-cat-that-changed-her-mind&psig=AOvVaw2kQsfnYaNDebdFM_OGZi_4&ust=1644082891877000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPjw66TM5vUCFQAAAAAdAAAAABAD'
  },
    {
    name: 'Simba',
    age: 2,
    enjoys: 'Singing',
    image: 'https://media.istockphoto.com/photos/puppy-wearing-cat-ears-for-halloween-picture-id469195013?k=20&m=469195013&s=170667a&w=0&h=rxlll2wFYzst1UL_DUE0gZG8DgfDBksguNELUqt4IcQ='
  },
      {
    name: 'Dog',
    age: 5,
    enjoys: 'Impersinating cats',
    image: 'https://media.istockphoto.com/photos/puppy-wearing-cat-ears-for-halloween-picture-id469195013?k=20&m=469195013&s=170667a&w=0&h=rxlll2wFYzst1UL_DUE0gZG8DgfDBksguNELUqt4IcQ='
  }
]
cats.each do |value|
  Cat.create value
  p "creating the cat attribute #{value}"
end