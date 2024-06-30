scoreboard players operation #operand.b.mantissa flop = operand.a.mantissa flop
execute if score #shift flop matches 16.. run scoreboard players operation #operand.b.mantissa flop /= #const.2^16 flop
execute if score #shift flop matches 16.. run scoreboard players remove #shift flop 16

execute if score #shift flop matches 8.. run scoreboard players operation #operand.b.mantissa flop /= #const.2^8 flop
execute if score #shift flop matches 8.. run scoreboard players remove #shift flop 8

execute if score #shift flop matches 4.. run scoreboard players operation #operand.b.mantissa flop /= #const.2^4 flop
execute if score #shift flop matches 4.. run scoreboard players remove #shift flop 4

execute if score #shift flop matches 2.. run scoreboard players operation #operand.b.mantissa flop /= #const.2^2 flop
execute if score #shift flop matches 2.. run scoreboard players remove #shift flop 2

execute if score #shift flop matches 1.. run scoreboard players operation #operand.b.mantissa flop /= #const.2^1 flop
execute if score #shift flop matches 1.. run scoreboard players remove #shift flop 1

scoreboard players operation output.mantissa flop = operand.b.mantissa flop
execute if score operand.a.sign flop = operand.b.sign flop run scoreboard players operation output.mantissa flop += #operand.b.mantissa flop
execute unless score operand.a.sign flop = operand.b.sign flop run scoreboard players operation output.mantissa flop -= #operand.b.mantissa flop
scoreboard players operation output.sign flop = operand.b.sign flop
scoreboard players operation output.exponent flop = operand.b.exponent flop

execute if score output.mantissa flop >= #const.2^30 flop run function flop:internal/add/rshift
execute if score output.mantissa flop matches 1.. if score output.mantissa flop < #const.2^29 flop run function flop:internal/add/lshift