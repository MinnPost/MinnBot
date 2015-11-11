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
#   ASCII flip tables
#
# Author:
#   jonathanstegall

flips = [
  '(╯°□°）╯︵ ┻━┻',
  '┬─┬﻿ ノ( ゜-゜ノ)',
  '(ノ ゜Д゜)ノ ︵ ┻━┻',
  '(╯°□°)╯︵ ┻━┻ ︵ ╯(°□° ╯)',
  '┬─┬﻿ ︵ /(.□. \）',
  '‎(ﾉಥ益ಥ）ﾉ﻿ ┻━┻',
  '(ノ^_^)ノ┻━┻ ┬─┬ ノ( ^_^ノ)',
  '(╯°Д°）╯︵ /(.□ . \)',
  "(╯'□')╯︵ ┻━┻",
  '(ﾉಥДಥ)ﾉ︵┻━┻･/',
  '(/ .□.)\ ︵╰(゜Д゜)╯︵ /(.□. \)',
  '(._.) ~ ︵ ┻━┻',
  'ʕノ•ᴥ•ʔノ ︵ ┻━┻',
  '(/¯◡ ‿ ◡)/¯ ~ ┻━┻',
  '(/¯◡ ‿ ◡)/¯ ~ ┻━┻',
  '┻━┻ ︵ ლ(⌒-⌒ლ)',
  'ʇǝʞɔɐɹq ︵ヽ(`Д´)ﾉ︵ ǝʞup'
]

module.exports = (robot) ->
  robot.hear /(flip tables|fight the power|#comment)\b/i, (msg) ->
      flip = msg.random flips
      msg.send flip