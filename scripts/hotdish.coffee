# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot hotdish me -> creates a random hotdish
#
# Author:
#   tom

fats =['3 T butter','3 T olive oil','3 T margarine']
aromatics = ['2 cups thinly sliced leeks','2 cups chopped onions','2 cups fine mirepoix']
frozen_vegetables = ['corn','vegetable medley','carrots','green beans','peas']
binders = ['2 cups bechamel','2 cups brown gravy','2 cans cream of mushroom soup']
proteins = ['cans of tuna','1# ground beef','1# ground bison','2 cups diced tofu']
starches  = ['1# egg noodles','2 c wild rice']
toppings = ['canned fried onions','tater tots','breadcrumbs']


module.exports = (robot) ->

  robot.respond /hotdish me/i, (msg) ->
    fat = msg.random fats
    aromatic = msg.random aromatics
    protein = msg.random proteins
    veg = msg.random frozen_vegetables
    binder = msg.random binders
    starch = msg.random starches
    topping = msg.random toppings

    msg.send "Heat #{fat} in large skillet over medium heat until shimmering. Add #{aromatic} and saute till softened. Add #{protein} and stir to combine. Stir in 3 cups frozen #{veg} and #{binder}. Add #{starch}. Pour into buttered casserole and top with #{topping}. Bake for one hour at 350ºF. Bon appetit!"
