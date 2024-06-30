scoreboard players operation #temp.enumerator.mantissa.old flop = #temp.enumerator.mantissa flop

scoreboard players operation #temp.enumerator.exponent flop += #temp.x.exponent flop

scoreboard players operation #op.a.m.high flop = #temp.enumerator.mantissa.old flop
scoreboard players operation #op.a.m.high flop /= #const.2^15 flop
scoreboard players operation #op.b.m.high flop = #temp.x.mantissa flop
scoreboard players operation #op.b.m.high flop /= #const.2^15 flop

scoreboard players operation #temp.enumerator.mantissa flop = #op.a.m.high flop
scoreboard players operation #temp.enumerator.mantissa flop *= #op.b.m.high flop

scoreboard players operation #temp flop = #temp.enumerator.mantissa.old flop
scoreboard players operation #temp flop %= #const.2^15 flop
scoreboard players operation #temp flop *= #op.b.m.high flop
scoreboard players operation #temp flop /= #const.2^15 flop
scoreboard players operation output.mantissa flop += #temp flop

scoreboard players operation #temp flop = #temp.enumerator.mantissa.old flop
scoreboard players operation #temp flop %= #const.2^15 flop
scoreboard players operation #temp flop *= #op.a.m.high flop
scoreboard players operation #temp flop /= #const.2^15 flop
scoreboard players operation #temp.enumerator.mantissa flop += #temp flop

scoreboard players add #temp.enumerator.exponent flop 1

scoreboard players add #temp.j flop 1
scoreboard players operation #temp.enumerator.mantissa flop /= #temp.j flop
scoreboard players add #temp.j flop 1
scoreboard players operation #temp.enumerator.mantissa flop /= #temp.j flop

execute if score #temp.enumerator.mantissa flop >= #const.2^30 flop run function flop:internal/cosh/rshift_enumerator
execute if score #temp.enumerator.mantissa flop <= #const.2^14 flop run function flop:internal/cosh/lshift_enumerator_16
execute if score #temp.enumerator.mantissa flop <= #const.2^22 flop run function flop:internal/cosh/lshift_enumerator_8
execute if score #temp.enumerator.mantissa flop <= #const.2^36 flop run function flop:internal/cosh/lshift_enumerator_4
execute if score #temp.enumerator.mantissa flop <= #const.2^28 flop run function flop:internal/cosh/lshift_enumerator_2
execute if score #temp.enumerator.mantissa flop <= #const.2^29 flop run function flop:internal/cosh/lshift_enumerator_1

