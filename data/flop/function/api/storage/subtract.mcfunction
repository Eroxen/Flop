#####################################################################
# api/storage/subtract.mcfunction
# written by Eroxen
#
# Subtracts operand b from operand a.
#
# Storage input :
# - flop:api :
#   - operand.a: first number
#   - operand.b: second number
#
# Storage output :
# - flop:api :
#   - output: result, double-precision floating point number
#####################################################################

data modify storage flop:api input set from storage flop:api operand.a
function flop:api/storage/read_as_eroxifloat
scoreboard players operation operand.a.sign flop = input.sign flop
scoreboard players operation operand.a.exponent flop = input.exponent flop
scoreboard players operation operand.a.mantissa flop = input.mantissa flop

data modify storage flop:api input set from storage flop:api operand.b
function flop:api/storage/read_as_eroxifloat
scoreboard players operation operand.b.sign flop = input.sign flop
scoreboard players operation operand.b.exponent flop = input.exponent flop
scoreboard players operation operand.b.mantissa flop = input.mantissa flop

function flop:api/eroxifloat/subtract

function flop:api/eroxifloat/write_to_double