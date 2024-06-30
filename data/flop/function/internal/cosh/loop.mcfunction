function flop:internal/cosh/multiply_enumerator

scoreboard players operation operand.a.sign flop = #temp.enumerator.sign flop
scoreboard players operation operand.a.exponent flop = #temp.enumerator.exponent flop
scoreboard players operation operand.a.mantissa flop = #temp.enumerator.mantissa flop
scoreboard players operation operand.b.sign flop = #temp.output.sign flop
scoreboard players operation operand.b.exponent flop = #temp.output.exponent flop
scoreboard players operation operand.b.mantissa flop = #temp.output.mantissa flop
scoreboard players operation operand.a.mantissa flop /= #temp.denominator flop
function flop:api/eroxifloat/add
scoreboard players operation #temp.output.sign flop = output.sign flop
scoreboard players operation #temp.output.exponent flop = output.exponent flop
scoreboard players operation #temp.output.mantissa flop = output.mantissa flop

scoreboard players remove #temp.i flop 1
execute if score #temp.i flop matches 1.. run function flop:internal/cosh/loop