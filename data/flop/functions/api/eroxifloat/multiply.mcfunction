#####################################################################
# api/eroxifloat/multiply.mcfunction
# written by Eroxen
#
# Multiplies two eroxifloats.
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
scoreboard players operation output.exponent flop += operand.b.exponent flop

scoreboard players operation output.sign flop = operand.a.sign flop
scoreboard players operation output.sign flop *= operand.b.sign flop

scoreboard players operation #op.a.m.high flop = operand.a.mantissa flop
scoreboard players operation #op.a.m.high flop /= #const.2^15 flop
scoreboard players operation #op.b.m.high flop = operand.b.mantissa flop
scoreboard players operation #op.b.m.high flop /= #const.2^15 flop

scoreboard players operation output.mantissa flop = #op.a.m.high flop
scoreboard players operation output.mantissa flop *= #op.b.m.high flop

scoreboard players operation #temp flop = operand.a.mantissa flop
scoreboard players operation #temp flop %= #const.2^15 flop
scoreboard players operation #temp flop *= #op.b.m.high flop
scoreboard players operation #temp flop /= #const.2^15 flop
scoreboard players operation output.mantissa flop += #temp flop

scoreboard players operation #temp flop = operand.b.mantissa flop
scoreboard players operation #temp flop %= #const.2^15 flop
scoreboard players operation #temp flop *= #op.a.m.high flop
scoreboard players operation #temp flop /= #const.2^15 flop
scoreboard players operation output.mantissa flop += #temp flop

scoreboard players add output.exponent flop 1

execute if score output.mantissa flop >= #const.2^30 flop run function flop:internal/add/rshift

