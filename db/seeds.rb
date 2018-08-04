# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'creating events...'
Event.create!(
  title: 'Da África para o mundo',
  subtitle: 'Bate-papo com Prof. Omana Ngandu',
  description: 'Na condição de refugiado, o Prof. Omana Ngandu irá abordar a situação dos que chegam ao Brasil, como são recebidas e tratadas essas pessoas e a diferença entre refugiados e imigrantes. Em 2015, Omana criou a Mungazi, uma organização apartidária e laica, que visa prestar apoio aos refugiados na sua adaptação a uma nova realidade, sem distinção étnica, política, ideológica ou religiosa.
    No Auditório. 202 lugares. Retirada de ingressos com 1h de antecedência.',
  url: 'https://www.facebook.com/events/159017921548873/',
  date: DateTime.parse('2018-02-23 17:15:00')
)

Event.create!(
  title: 'Natal Solidário na Mungazi',
  subtitle: '',
  description: 'Olá, Amigos da Mungazi!
    No dia 16 de Dezembro das 11h às 17h, realizaremos uma festa muito especial de final de ano: O Natal Solidário na Mungazi!

    Faça parte desta festa!',
  url: 'https://www.facebook.com/events/134781753902276/',
  date: DateTime.parse('2017-12-16 11:00')
)

Event.create!(
  title: 'Festa: Somos todos Crianças',
  subtitle: '',
  description: 'O Dia das Crianças é comemorado no Brasil em 12 de outubro,
    Vamos organizar em 14 de outubro o dia das crianças refugiadas! Serviremos um almoço com pratos da gastronomia africana.',
  url: 'https://www.facebook.com/events/1364640430300505/',
  date: DateTime.parse('2017-9-14 12:30')
)
puts 'done'

puts 'creating videos...'
Video.create!(url: 'https://www.facebook.com/ongmungazi/videos/972144796260505/')
Video.create!(url: 'https://www.facebook.com/ongmungazi/videos/971313019677016/')
puts 'done'


puts 'creating articles...'
article = Article.new(title: 'Agradecimentos à Cassia', short_title: 'Agradecimentos à Cassia', content: 'Hello World')
File.open(File.join(Rails.root, 'db', 'seed_images', 'item1.jpg')) do |f|
  article.image = f
end
article.save!
Article.create!(title: 'Erick Guanho', short_title: 'Erick Guanho', image: File.open(File.join(Rails.root, 'db', 'seed_images', 'item2.jpg')), content: 'lorem ipsum')
Article.create!(title: 'Luciana', short_title: 'Luciana', image: File.open(File.join(Rails.root, 'db', 'seed_images', 'item3.jpg')), content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
puts 'done'

puts 'creating admin...'
User.create!(email: ENV['ADMIN_EMAIL'], password: ENV.fetch('ADMIN_PASSWORD'))
puts 'done'
