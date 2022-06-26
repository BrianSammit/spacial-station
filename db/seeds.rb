# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.create(name: "Vehículo lanzadera", img: 'https://c.pxhere.com/photos/76/05/atlantis_space_shuttle_rollout_launch_pad_cape_canaveral_florida_usa_rocket-836650.jpg!d')
Category.create(name: "Naves no tripuladas o roboticas", img: 'https://ichef.bbci.co.uk/news/640/cpsprodpb/A5EC/production/_101567424_23128844405_6151e276cd_k.jpg' )
Category.create(name: "Naves espaciales tripuladas", img: 'https://danielmarin.naukas.com/files/2018/01/3.jpg')

Rocket.create(name: 'Saturno V', fuel: 'H(liq)+O(liq)', country: 'EE.UU', activity: '1967-1973', category_id: 1, img_url: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Apollo_4_Saturn_V%2C_s67-50531.jpg')
Rocket.create(name: 'Transbordador espacial', fuel: 'Solido*+Queroseno+N(liq)', country: 'EE.UU', activity: '1981-2011', category_id: 1, img_url: 'http://estaticos.muyinteresante.es/rcs/articles/1258/discovery.jpg')
Rocket.create(name: 'Proton', fuel: 'C2h8N2+NO', country: 'Rusia', activity: '2001-Act', category_id: 1, img_url: 'https://upload.wikimedia.org/wikipedia/commons/f/fd/On_the_launch_pad.jpg')

Rocket.create(name: 'Explorer', fuel: 'Solido*+Liquido*****', country: 'EE.UU', activity: '1958-1970', category_id: 2, img_url: 'https://newspack-hipertextual.s3.amazonaws.com/wp-content/uploads/2018/01/Explorer-1.jpg')
Rocket.create(name: 'Progreso M', fuel: 'N2O4+UDMH', country: 'Rusia', activity: '1989-Act', category_id: 2, img_url: 'http://img.src.ca/2015/04/29/635x357/150429_2t49m_progress-vaisseau-d_sn635.jpg')
Rocket.create(name: 'ATV****', fuel: 'MMH**+NO', country: 'Europa', activity: '2008-Act', category_id: 2, img_url: 'https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2007/04/atv_approaching_space_station/9710000-3-eng-GB/ATV_approaching_Space_Station_pillars.jpg')

Rocket.create(name: 'Dragon V2', fuel: 'Solido*', country: 'EE.UU', activity: '2016', category_id: 3, img_url: 'https://upload.wikimedia.org/wikipedia/commons/7/7d/Crew_Dragon_at_the_ISS_for_Demo_Mission_1_%28cropped%29.jpg')
Rocket.create(name: 'Vostok', fuel: 'NO+Amina', country: 'Rusia', activity: '1960-1963', category_id: 3, img_url: 'https://eltrasterodepalacio.files.wordpress.com/2011/07/nave-vostok-1-04-iniciando-su-primer-vuelo.jpg')
Rocket.create(name: 'EEI', fuel: 'No informacion', country: 'Internacional', activity: '1998-Act', category_id: 3, img_url: 'https://s.yimg.com/ny/api/res/1.2/_mlRknX5O2YDiIf_hh8VdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQ4MA--/https://s.yimg.com/uu/api/res/1.2/xpVec1.PiXa5opkJvINUbA--~B/aD0xMjgwO3c9MTcwNjthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/es/efe.es/35866676155f8ee020022d1240de8629')

