#####################################################################
# api/eroxifloat/divide.mcfunction
# written by Eroxen
#
# Divides eroxifloat a by eroxifloat b.
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

scoreboard players operation output.exponent flop = operand.a.exponent flop
scoreboard players operation output.exponent flop -= operand.b.exponent flop

scoreboard players operation output.sign flop = operand.a.sign flop
scoreboard players operation output.sign flop *= operand.b.sign flop

scoreboard players operation #temp flop = operand.b.mantissa flop
scoreboard players operation #temp flop /= #const.2^15 flop
scoreboard players operation output.mantissa flop = operand.a.mantissa flop
scoreboard players operation output.mantissa flop /= #temp flop
scoreboard players operation output.mantissa flop *= #const.2^15 flop

scoreboard players operation #temp2 flop = operand.a.mantissa flop
scoreboard players operation #temp2 flop %= #const.2^15 flop
scoreboard players operation #temp2 flop *= #const.2^15 flop
scoreboard players operation #temp2 flop /= #temp flop
scoreboard players operation output.mantissa flop += #temp2 flop

scoreboard players remove output.exponent flop 1

execute if score output.mantissa flop matches 1.. if score output.mantissa flop < #const.2^29 flop run function flop:internal/add/lshift