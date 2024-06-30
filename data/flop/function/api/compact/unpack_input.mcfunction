#####################################################################
# api/compact/unpack_input.mcfunction
# written by Eroxen
#
# Converts the compact input into an Eroxifloat,
# i.e. 3 separate scoreboards.
#
# Scoreboard input :
# - flop :
#   - input.compact: floating point in IEEE bit format
#
# Scoreboard input :
# - flop :
#   - input.sign: sign (1 or -1)
#   - input.exponent: exponent
#   - input.mantissa: mantissa
#####################################################################

scoreboard players set input.sign flop 1
execute if score input.compact flop matches ..-1 run scoreboard players set input.sign flop -1
scoreboard players operation #convert flop = input.compact flop
execute if score #convert flop matches ..-1 run function flop:internal/compact/remove_sign_bit

scoreboard players operation input.exponent flop = #convert flop
scoreboard players operation input.exponent flop /= #const.2^23 flop
scoreboard players remove input.exponent flop 128

scoreboard players operation input.mantissa flop = #convert flop
scoreboard players operation input.mantissa flop %= #const.2^23 flop
scoreboard players operation input.mantissa flop *= #const.2^9 flop