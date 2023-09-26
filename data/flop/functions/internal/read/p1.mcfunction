scoreboard players add input.exponent flop 30
execute store result score #input.dec flop run data get storage flop:api input 0.000000000931322574615478515625
execute if score #input.dec flop matches ..-1 store result score #input.dec flop run data get storage flop:api input -0.000000000931322574615478515625
execute if score #input.dec flop > #const.2^30 flop run function flop:internal/read/p2