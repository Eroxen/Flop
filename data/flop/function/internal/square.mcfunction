scoreboard players operation output.exponent flop = input.exponent flop
scoreboard players operation output.exponent flop += input.exponent flop

scoreboard players set output.sign flop 1

scoreboard players operation #op.a.m.high flop = input.mantissa flop
scoreboard players operation #op.a.m.high flop /= #const.2^15 flop

scoreboard players operation output.mantissa flop = #op.a.m.high flop
scoreboard players operation output.mantissa flop *= #op.a.m.high flop

scoreboard players operation #temp flop = input.mantissa flop
scoreboard players operation #temp flop %= #const.2^15 flop
scoreboard players operation #temp flop *= #op.a.m.high flop
scoreboard players operation #temp flop /= #const.2^14 flop
scoreboard players operation output.mantissa flop += #temp flop

scoreboard players add output.exponent flop 1

execute if score output.mantissa flop >= #const.2^30 flop run function flop:internal/add/rshift