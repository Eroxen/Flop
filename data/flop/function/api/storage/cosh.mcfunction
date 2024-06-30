#####################################################################
# api/storage/cosh.mcfunction
# written by Eroxen
#
# Approximates the cosh function of the input.
#
# Storage input :
# - flop:api :
#   - input: input number in NBT storage
#
# Storage output :
# - flop:api :
#   - output: result, double-precision floating point number
#####################################################################

function flop:api/storage/read_as_eroxifloat
function flop:api/eroxifloat/cosh
function flop:api/eroxifloat/write_to_double