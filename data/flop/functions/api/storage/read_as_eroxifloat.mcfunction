#####################################################################
# api/eroxifloat/read_as_eroxifloat.mcfunction
# written by Eroxen
#
# Reads a number from NBT storage and converts it to an eroxifloat.
#
# Storage input :
# - flop:api :
#   - input: number of any data type
#
# Scoreboard input :
# - flop.api :
#   - input.sign: sign (1 or -1)
#   - input.exponent: exponent
#   - input.mantissa: mantissa
#####################################################################

scoreboard players set input.exponent flop 0

execute store result score #input.dec flop run data get storage flop:api input 1
execute if score #input.dec flop matches ..-1 store result score #input.dec flop run data get storage flop:api input -1
execute if score #input.dec flop matches 0 run function flop:internal/read/n1
execute if score #input.dec flop > #const.2^30 flop run function flop:internal/read/p1

### compute exponent ###
execute if score #input.dec flop matches ..-1 run scoreboard players operation #input.dec flop *= #const.-1 flop
execute if score #input.dec flop matches ..-1 run scoreboard players add input.exponent flop 16
execute if score #input.dec flop matches ..-1 run scoreboard players operation #input.dec flop /= #const.-2^16 flop

execute if score #input.dec flop matches 65536.. run scoreboard players add input.exponent flop 16
execute if score #input.dec flop matches 65536.. run scoreboard players operation #input.dec flop /= #const.2^16 flop

execute if score #input.dec flop matches 256.. run scoreboard players add input.exponent flop 8
execute if score #input.dec flop matches 256.. run scoreboard players operation #input.dec flop /= #const.2^8 flop

execute if score #input.dec flop matches 16.. run scoreboard players add input.exponent flop 4
execute if score #input.dec flop matches 16.. run scoreboard players operation #input.dec flop /= #const.2^4 flop

execute if score #input.dec flop matches 4.. run scoreboard players add input.exponent flop 2
execute if score #input.dec flop matches 4.. run scoreboard players operation #input.dec flop /= #const.2^2 flop

execute if score #input.dec flop matches 2.. run scoreboard players add input.exponent flop 1
execute if score #input.dec flop matches 2.. run scoreboard players operation #input.dec flop /= #const.2^1 flop


### get mantissa ###
scoreboard players set input.sign flop 1
function flop:internal/read/tree/-91_91
execute if score input.mantissa flop matches ..-1 run scoreboard players set input.sign flop -1
execute if score input.mantissa flop matches ..-1 run scoreboard players operation input.mantissa flop *= #const.-1 flop