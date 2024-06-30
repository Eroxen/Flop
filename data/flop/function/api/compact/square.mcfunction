#####################################################################
# api/compact/square.mcfunction
# written by Eroxen
#
# Squares a number.
#
# Scoreboard input :
# - flop :
#   - input.compact: input
#
# Scoreboard output :
# - flop :
#   - output.compact: result
#####################################################################

function flop:api/compact/unpack_input
function flop:api/eroxifloat/square
function flop:api/eroxifloat/convert_to_compact