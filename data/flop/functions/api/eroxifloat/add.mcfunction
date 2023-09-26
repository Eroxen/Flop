#####################################################################
# api/eroxifloat/add.mcfunction
# written by Eroxen
#
# Adds two eroxifloats.
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

scoreboard players set #swap flop 0
execute if score operand.b.exponent flop > operand.a.exponent flop run scoreboard players set #swap flop 1
execute if score operand.b.exponent flop = operand.a.exponent flop if score operand.b.mantissa flop > operand.a.mantissa flop run scoreboard players set #swap flop 1

execute if score #swap flop matches 0 run function flop:internal/add/noswap
execute if score #swap flop matches 1 run function flop:internal/add/swap