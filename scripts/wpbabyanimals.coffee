# Description:
#   Shows a random cute baby animal form
#   http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot cute me -> Displays random WP baby animal
#
# Author:
#   zzolo

images = [
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/ringed-teal.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/guam-rail.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/tufted-deer.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/black-footed-ferrets.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/stanley-crane.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/flamingo.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/loggerhead-shrike.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/leaf-tailed-gecko.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/scimitar-horned-oryx.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/red-panda.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/roseate-spoonbill.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/strawberry-frog.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/stingray.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/tinamou.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/red-crested-cardinal.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/blue-poison-dart-frog.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/short-eared-elephant-shrew.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/fishing-cat.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/clouded-leopard.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/bali-mynah.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/lion.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/addra-gazelle.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/gray-seal.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/micronesian-kingfisher.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/sloth-bear.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/cheetah.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/degu.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/tentacled-snake.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/brown-antlered-deer.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/black-crake.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/scarlet-ibis.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/green-and-black-frog.jpg',
  'http://www.washingtonpost.com/wp-srv/special/local/baby-animals-at-the-national-zoo/img/giant-panda.jpg'
]


module.exports = (robot) ->

  robot.respond /cute me/i, (msg) ->
  	msg.send msg.random images
