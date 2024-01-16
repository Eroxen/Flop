#####################################################################
# api/eroxifloat/sqrt.mcfunction
# written by Eroxen
#
# Computes the square root of an eroxifloat while ignoring the sign.
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

execute if score input.mantissa flop matches 0 run function flop:internal/set_output_0
execute unless score input.mantissa flop matches 0 run function flop:internal/sqrt