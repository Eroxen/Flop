#####################################################################
# api/eroxifloat/convert_to_compact.mcfunction
# written by Eroxen
#
# Writes an eroxifloat into a single score for easier
# copying. May cause some precision loss.
#
# Scoreboard input :
# - flop :
#   - output.sign: sign (1 or -1)
#   - output.exponent: exponent
#   - output.mantissa: mantissa
#
# Scoreboard output :
# - flop :
#   - output.compact: floating point in IEEE bit format
#####################################################################

scoreboard players set output.compact flop 0
execute if score output.sign flop matches -1 run scoreboard players set output.compact flop -2147483648

scoreboard players operation #convert flop = output.exponent flop
scoreboard players add #convert flop 128
execute if score #convert flop matches ..-1 run scoreboard players set #convert flop 0
execute if score #convert flop matches 256.. run scoreboard players set #convert flop 255
scoreboard players operation #convert flop *= #const.2^23 flop
scoreboard players operation output.compact flop += #convert flop

scoreboard players operation #convert flop = output.mantissa flop
scoreboard players operation #convert flop /= #const.2^9 flop
scoreboard players operation output.compact flop += #convert flop