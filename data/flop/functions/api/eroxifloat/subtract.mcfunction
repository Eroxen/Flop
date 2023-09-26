#####################################################################
# api/eroxifloat/subtract.mcfunction
# written by Eroxen
#
# Subtracts eroxifloat b from eroxifloat a.
#
# Scoreboard input :
# - flop :
#   - operand.a.sign: sign of first operand (1 or -1)
#   - operand.a.exponent: exponent of first operand
#   - operand.a.mantissa: mantissa of first operand
#   - operand.b.sign: sign of second operand (1 or -1)
#   - operand.b.exponent: exponent of second operand
#   - operand.b.mantissa: mantissa of second operand
#
# Scoreboard output :
# - flop :
#   - output.sign: sign of result (1 or -1)
#   - output.exponent: exponent of result
#   - output.mantissa: mantissa of result
#####################################################################

scoreboard players operation operand.b.sign flop *= #const.-1 flop
function flop:api/eroxifloat/add
scoreboard players operation operand.b.sign flop *= #const.-1 flop