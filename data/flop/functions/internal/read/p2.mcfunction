scoreboard players add input.exponent flop 30
execute store result score #input.dec flop run data get storage flop:api input 0.000000000000000000867361737988403547205962240695953369140625
execute if score #input.dec flop matches ..-1 store result score #input.dec flop run data get storage flop:api input -0.000000000000000000867361737988403547205962240695953369140625