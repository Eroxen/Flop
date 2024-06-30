#####################################################################
# api/storage/square.mcfunction
# written by Eroxen
#
# Computes the square of a number in NBT storage.
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
function flop:api/eroxifloat/square
function flop:api/eroxifloat/write_to_double