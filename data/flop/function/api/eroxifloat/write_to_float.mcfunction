#####################################################################
# api/eroxifloat/write_to_float.mcfunction
# written by Eroxen
#
# Writes an eroxifloat to a float in NBT storage.
#
# Scoreboard input :
# - flop :
#   - output.sign: sign (1 or -1)
#   - output.exponent: exponent
#   - output.mantissa: mantissa
#
# Storage output :
# - flop:api :
#   - output: floating point number
#####################################################################

scoreboard players operation #write flop = output.mantissa flop
scoreboard players operation #write flop *= output.sign flop
function flop:internal/write/float_tree/-91_91