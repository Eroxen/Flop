#####################################################################
# api/eroxifloat/sqrt.mcfunction
# written by Eroxen
#
# Computes the square root of an eroxifloat while ignoring the sign.
#
# Scoreboard input :
# - flop :
#   - input.sign: sign of input (1 or -1)
#   - input.exponent: exponent of input
#   - input.mantissa: mantissa of input
#
# Scoreboard output :
# - flop :
#   - output.sign: sign of result (1 or -1)
#   - output.exponent: exponent of result
#   - output.mantissa: mantissa of result
#####################################################################

scoreboard players operation output.sign flop = input.sign flop

scoreboard players operation output.exponent flop = input.exponent flop
scoreboard players operation output.exponent flop /= #const.2^1 flop
scoreboard players operation #temp2 flop = output.exponent flop
scoreboard players operation #temp2 flop *= #const.2^1 flop


scoreboard players operation output.mantissa flop = #const.2^14 flop
execute if score #temp2 flop = input.exponent flop run scoreboard players operation input.mantissa flop *= #const.2^1 flop

scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^14 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^14 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^13 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^13 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^12 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^12 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^11 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^11 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^10 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^10 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^9 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^9 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^8 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^8 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^7 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^7 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^6 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^6 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^5 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^5 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^4 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^4 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^3 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^3 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^2 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^2 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^1 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^1 flop


scoreboard players operation #temp flop = output.mantissa flop
scoreboard players operation #temp flop += #const.2^0 flop
scoreboard players operation #temp flop *= #temp flop
execute if score #temp flop matches 0.. if score #temp flop <= input.mantissa flop run scoreboard players operation output.mantissa flop += #const.2^0 flop


scoreboard players operation output.mantissa flop *= #const.2^15 flop
execute if score #temp2 flop = input.exponent flop run scoreboard players operation output.mantissa flop /= #const.2^1 flop