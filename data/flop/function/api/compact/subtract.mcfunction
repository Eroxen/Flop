#####################################################################
# api/compact/subtract.mcfunction
# written by Eroxen
#
# Subtracts two numbers.
#
# Scoreboard input :
# - flop :
#   - operand.a.compact: first number
#   - operand.b.compact: second number
#
# Scoreboard output :
# - flop :
#   - output.compact: result
#####################################################################

function flop:internal/compact/unpack_operand_a
function flop:internal/compact/unpack_operand_b
function flop:api/eroxifloat/subtract
function flop:api/eroxifloat/convert_to_compact