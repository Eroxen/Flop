#####################################################################
# api/compact/add.mcfunction
# written by Eroxen
#
# Adds two numbers.
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
function flop:api/eroxifloat/add
function flop:api/eroxifloat/convert_to_compact