#####################################################################
# api/compact/sqrt.mcfunction
# written by Eroxen
#
# Computes the square root of a number.
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
function flop:api/eroxifloat/sqrt
function flop:api/eroxifloat/convert_to_compact