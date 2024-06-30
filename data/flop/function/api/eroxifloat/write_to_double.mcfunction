#####################################################################
# api/eroxifloat/write_to_double.mcfunction
# written by Eroxen
#
# Writes an eroxifloat to a double in NBT storage.
#
# Scoreboard input :
# - flop :
#   - output.sign: sign (1 or -1)
#   - output.exponent: exponent
#   - output.mantissa: mantissa
#
# Storage output :
# - flop:api :
#   - output: double-precision floating point number
#####################################################################

scoreboard players operation #write flop = output.mantissa flop
scoreboard players operation #write flop *= output.sign flop
function flop:internal/write/double_tree/-91_91