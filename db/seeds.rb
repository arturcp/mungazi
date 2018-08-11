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
content = <<EOF
<p><b><i>&quot;Quando me pediram para escolher um lugar para fugir escolhi o Brasil&quot;</i></b></p>\r\n\r\n<p>Nascido na Rep&uacute;blica Democr&aacute;tica do Congo, o professor Omana Petench criou uma organiza&ccedil;&atilde;o para ajudar a denunciar viola&ccedil;&otilde;es contra mulheres e crian&ccedil;as em seu pa&iacute;s. Com isso, virou advers&aacute;rio do governo e participou de uma revolta contra o Estado.</p>\r\n\r\n<p>Sofreu persegui&ccedil;&otilde;es, tortura, pris&otilde;es e sequestro, at&eacute; cruzar a fronteira em busca de prote&ccedil;&atilde;o. Sua casa no Congo foi invadida e sua filha mais velha, morta. Refugiado no Brasil desde 2013, deixou mulher e cinco filhos em Uganda. Conseguiu se reencontrar com a fam&iacute;lia em S&atilde;o Paulo em 2016 ap&oacute;s tr&ecirc;s anos e meio de separa&ccedil;&atilde;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><iframe allow=\"autoplay; encrypted-media\" allowfullscreen=\"\" frameborder=\"0\" height=\"281\" src=\"https://www.youtube.com/embed/8paKulG1C_M\" width=\"480\"></iframe></p>\r\n
EOF

article = Article.create!(
  title: 'Omana Petench',
  short_title: 'Omana Petench',
  image: File.open(File.join(Rails.root, 'db', 'seed_images', 'item1.jpg')),
  content: content
)

Article.create!(
  title: 'A importância da palmeira',
  short_title: 'A importância da palmeira',
  image: File.open(File.join(Rails.root, 'db', 'seed_images', 'item2.jpg')),
  content: 'A palmeira é vital para os moradores da zona rural na África, cuja subsistência diária depende fortemente dos recursos naturais. Eles as usam para construir sua habitação, para fazer ferramentas – vassouras, cordas ou capas de faca – e comem o coração das plantas. A palmeira também é valorizada por suas propriedades medicinais, para tratar da tosse ou problemas de digestão. Infelizmente, muitos desses usos são letais para elas. Extrair o palmito, por exemplo, mata a árvore.'
)

content = <<EOF
<p>Criado em 2015, a <strong>Mungazi</strong>, &eacute; uma organiza&ccedil;&atilde;o apartid&aacute;ria e laica, que visa prestar apoio aos refugiados na sua adapta&ccedil;&atilde;o a uma nova realidade, sem distin&ccedil;&atilde;o &eacute;tnica, pol&iacute;tica, ideol&oacute;gica ou religiosa.</p>\r\n\r\n<p>Al&eacute;m do apoio &agrave; integra&ccedil;&atilde;o, oferecemos a oportunidade da aprendizagem da cultura africana e gastronomia africana. Estes cursos, ministrados por refugiados, funcionam como pontes, por meio das quais os alunos tenham a possibilidade de acessar novas culturas, e suas riquezas, favorecendo os la&ccedil;os e as trocas intercomunit&aacute;rias, promovendo, assim, o resgate e a preserva&ccedil;&atilde;o da hist&oacute;ria africana no Brasil.</p>\r\n
EOF
Article.create!(
  title: 'História da ONG',
  short_title: 'História da ONG',
  image: File.open(File.join(Rails.root, 'db', 'seed_images', 'item3.jpg')),
  content: content
)

puts 'done'

puts 'creating admin...'
User.create!(email: ENV['ADMIN_EMAIL'], password: ENV.fetch('ADMIN_PASSWORD'))
puts 'done'
