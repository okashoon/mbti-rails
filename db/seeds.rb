# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

questions = [{text:"You find it takes effort to introduce yourself to other people.",dimension:"EI",direction:1,meaning:"I"},
    {text:"You consider yourself more practical than creative.",dimension:"SN",direction:-1,meaning:"S"},
    {text:"Winning a debate matters less to you than making sure no one gets upset.",dimension:"TF",direction:1,meaning:"F"},
    {text:"You get energized going to social events that involve many interactions.",dimension:"EI",direction:-1,meaning:"E"},
    {text:"You often spend time exploring unrealistic and impractical yet intriguing ideas.",dimension:"SN",direction:1,meaning:"N"},
    {text:"Deadlines seem to you to be of relative rather than absolute importance.",dimension:"JP",direction:1,meaning:"P"},
    {text:"Logic is usually more important than heart when it comes to making important decisions.",dimension:"TF",direction:-1,meaning:"T"},
    {text:"Your home and work environments are quite tidy.",dimension:"JP",direction:-1,meaning:"J"},
    {text:"You do not mind being at the center of attention.",dimension:"EI",direction:-1,meaning:"E"},
    {text:"Keeping your options open is more important than having a to-do list.",dimension:"JP",direction:1,meaning:"P"}
]

questions.each do |q|
    Question.create(q)
end