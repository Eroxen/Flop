#####################################################################
# api/eroxifloat/cosh.mcfunction
# written by Eroxen
#
# Approximates the cosh function of the input.
#
# Overrides previous input, operand.a and operand.b!
#
# Scoreboard input :
# - flop :
#   - input.sign: sign of input (1 or -1)
#   - input.exponent: exponent of input
#   - input.mantissa: mantissa of input
#
# Scoreboard output :
# - flop :
#   - output.sign: sign of result (1 or -1)
#   - output.exponent: exponent of result
#   - output.mantissa: mantissa of result
#####################################################################

#scoreboard players operation #store.input.sign flop = input.sign flop
#scoreboard players operation #store.input.exponent flop = input.exponent flop
#scoreboard players operation #store.input.mantissa flop = input.mantissa flop
function flop:api/eroxifloat/square
scoreboard players operation #temp.x.sign flop = output.sign flop
scoreboard players operation #temp.x.exponent flop = output.exponent flop
scoreboard players operation #temp.x.mantissa flop = output.mantissa flop

scoreboard players operation #temp.output.sign flop = #const.1.sign flop
scoreboard players operation #temp.output.exponent flop = #const.1.exponent flop
scoreboard players operation #temp.output.mantissa flop = #const.1.mantissa flop

scoreboard players operation #temp.enumerator.sign flop = #const.1.sign flop
scoreboard players operation #temp.enumerator.exponent flop = #const.1.exponent flop
scoreboard players operation #temp.enumerator.mantissa flop = #const.1.mantissa flop

scoreboard players set #temp.j flop 0

scoreboard players operation #temp.i flop = #store.input.exponent flop
scoreboard players operation #temp.i flop *= #const.3 flop
execute if score #store.input.mantissa flop matches 676399360.. run scoreboard players add #temp.i flop 1
execute if score #store.input.mantissa flop matches 852229440.. run scoreboard players add #temp.i flop 1
scoreboard players add #temp.i flop 5
execute if score #temp.i flop matches ..5 run scoreboard players set #temp.i flop 5
execute if score #temp.i flop matches 15.. run scoreboard players set #temp.i flop 15

execute if score #temp.i flop matches 1.. run function flop:internal/cosh/loop

scoreboard players operation output.sign flop = #temp.output.sign flop
scoreboard players operation output.exponent flop = #temp.output.exponent flop
scoreboard players operation output.mantissa flop = #temp.output.mantissa flop
#scoreboard players operation input.sign flop = #store.input.sign flop
#scoreboard players operation input.exponent flop = #store.input.exponent flop
#scoreboard players operation input.mantissa flop = #store.input.mantissa flop
