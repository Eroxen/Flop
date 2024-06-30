scoreboard players remove input.exponent flop 30
execute store result score #input.dec flop run data get storage flop:api input 1152921504606846976
execute if score #input.dec flop matches ..-1 store result score #input.dec flop run data get storage flop:api input -1152921504606846976
execute if score #input.dec flop matches 0 run function flop:internal/read/n3