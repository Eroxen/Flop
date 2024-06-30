$data modify storage flop:api operand set value {a:$(a)d,b:$(b)d}

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

function flop:api/eroxifloat/add

function flop:api/eroxifloat/write_to_double


data modify storage flop:internal chat_macro set from storage flop:api operand
data modify storage flop:internal chat_macro.op set value "+"
data modify storage flop:internal chat_macro.out set from storage flop:api output
function flop:internal/chat/binary_operator with storage flop:internal chat_macro