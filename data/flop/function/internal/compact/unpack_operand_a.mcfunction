scoreboard players set operand.a.sign flop 1
execute if score operand.a.compact flop matches ..-1 run scoreboard players set operand.a.sign flop -1
scoreboard players operation #convert flop = operand.a.compact flop
execute if score #convert flop matches ..-1 run function flop:internal/compact/remove_sign_bit

scoreboard players operation operand.a.exponent flop = #convert flop
scoreboard players operation operand.a.exponent flop /= #const.2^23 flop
scoreboard players remove operand.a.exponent flop 128

scoreboard players operation operand.a.mantissa flop = #convert flop
scoreboard players operation operand.a.mantissa flop %= #const.2^23 flop
scoreboard players operation operand.a.mantissa flop *= #const.2^9 flop