$data modify storage flop:api input set value $(input)d

function flop:api/storage/read_as_eroxifloat

scoreboard players operation output.sign flop = input.sign flop
scoreboard players operation output.exponent flop = input.exponent flop
scoreboard players operation output.mantissa flop = input.mantissa flop

function flop:api/eroxifloat/write_to_double

data modify storage flop:internal chat_macro set value {pref:"",suf:""}
data modify storage flop:internal chat_macro.in set from storage flop:api input
data modify storage flop:internal chat_macro.out set from storage flop:api output
function flop:internal/chat/unary_operator with storage flop:internal chat_macro