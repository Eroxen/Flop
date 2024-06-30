scoreboard players set operand.b.sign flop 1
execute if score operand.b.compact flop matches ..-1 run scoreboard players set operand.b.sign flop -1
scoreboard players operation #convert flop = operand.b.compact flop
execute if score #convert flop matches ..-1 run function flop:internal/compact/remove_sign_bit

scoreboard players operation operand.b.exponent flop = #convert flop
scoreboard players operation operand.b.exponent flop /= #const.2^23 flop
scoreboard players remove operand.b.exponent flop 128

scoreboard players operation operand.b.mantissa flop = #convert flop
scoreboard players operation operand.b.mantissa flop %= #const.2^23 flop
scoreboard players operation operand.b.mantissa flop *= #const.2^9 flop