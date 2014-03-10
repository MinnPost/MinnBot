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
#   "Is nothing easy" or variants -> displays infomercial fail
#
# Author:
#   tnehil

images = ["http://i.imgur.com/InuUEBT.gif",
"http://i.imgur.com/3bglyBB.gif",
"http://i.imgur.com/MHjdrhG.gif",
"http://i.imgur.com/TOnVqtK.gif",
"http://i.imgur.com/fJBRMl2.gif",
"http://i.imgur.com/nZLvy2K.gif",
"http://i.imgur.com/U1In3jK.gif",
"http://i.imgur.com/haQkkpc.gif",
"http://i.imgur.com/Ag7DTzC.gif",
"http://i.imgur.com/RHYCsUu.gif",
"http://i.imgur.com/lsUszX8.gif",
"http://i.imgur.com/ydmMiRi.gif",
"http://i.imgur.com/dqLMyHO.gif",
"http://i.imgur.com/M0Y0zs5.gif",
"http://i.imgur.com/S8N2M0m.gif",
"http://i.imgur.com/BM6z1xk.gif",
"http://i.imgur.com/UwOBvRU.gif",
"http://i.imgur.com/HDKME1d.gif",
"http://i.imgur.com/ZLC7Ma7.gif",
"http://i.imgur.com/qTAOtC5.gif",
"http://i.imgur.com/d7lGARs.gif",
"http://i.imgur.com/9eyaAQW.gif",
"http://i.imgur.com/Awdr31b.gif",
"http://i.imgur.com/90IB9ZA.gif",
"http://i.imgur.com/e2itmAJ.gif",
"http://i.imgur.com/BnyaxDZ.gif",
"http://i.imgur.com/PdhZvLo.gif",
"http://i.imgur.com/RDjbTO3.gif",
"http://i.imgur.com/sqQkLGS.gif",
"http://i.imgur.com/wu2W0HX.gif",
"http://i.imgur.com/1eoEh0a.gif",
"http://i.imgur.com/VmoUtdN.gif",
"http://i.imgur.com/Oy88ZRu.gif",
"http://i.imgur.com/xo0GYqb.gif",
"http://i.imgur.com/aKQg48e.gif",
"http://i.imgur.com/F3dSLdd.gif",
"http://i.imgur.com/2SW4nsn.gif",
"http://i.imgur.com/sWmiSyL.gif",
"http://i.imgur.com/e5AUbYx.gif",
"http://i.imgur.com/93QH9ct.gif",
"http://i.imgur.com/kWtVTWp.gif"]


module.exports = (robot) ->

  robot.hear /is nothing easy/i, (msg) ->
  	fail = msg.random images
  	msg.send fail

  robot.hear /nothing[']*s easy/i, (msg) ->
    fail = msg.random images
    msg.send fail
