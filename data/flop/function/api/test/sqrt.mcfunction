$data modify storage flop:api input set value $(input)d

function flop:api/storage/read_as_eroxifloat

function flop:api/eroxifloat/sqrt

function flop:api/eroxifloat/write_to_double

data modify storage flop:internal chat_macro set value {pref:"sqrt(",suf:")"}
data modify storage flop:internal chat_macro.in set from storage flop:api input
data modify storage flop:internal chat_macro.out set from storage flop:api output
function flop:internal/chat/unary_operator with storage flop:internal chat_macro