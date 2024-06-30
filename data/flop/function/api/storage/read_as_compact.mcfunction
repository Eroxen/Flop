#####################################################################
# api/storage/read_as_compact.mcfunction
# written by Eroxen
#
# Reads a number from NBT storage and converts it to a score.
#
# Storage input :
# - flop:api :
#   - input: number of any data type
#
# Scoreboard input :
# - flop.api :
#   - input.compact: compact representation
#####################################################################

function flop:api/storage/read_as_eroxifloat

scoreboard players set input.compact flop 0
execute if score input.sign flop matches -1 run scoreboard players set input.compact flop -2147483648

scoreboard players operation #convert flop = input.exponent flop
scoreboard players add #convert flop 128
execute if score #convert flop matches ..-1 run scoreboard players set #convert flop 0
execute if score #convert flop matches 256.. run scoreboard players set #convert flop 255
scoreboard players operation #convert flop *= #const.2^23 flop
scoreboard players operation input.compact flop += #convert flop

scoreboard players operation #convert flop = input.mantissa flop
scoreboard players operation #convert flop /= #const.2^9 flop
scoreboard players operation input.compact flop += #convert flop