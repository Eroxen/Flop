$data modify storage flop:api input set value $(input)d
function flop:api/storage/read_as_eroxifloat

data modify storage flop:internal chat_macro set value {i:0d,s:0,e:0,m:0}
data modify storage flop:internal chat_macro.i set from storage flop:api input
execute store result storage flop:internal chat_macro.s int 1 run scoreboard players get input.sign flop
execute store result storage flop:internal chat_macro.e int 1 run scoreboard players get input.exponent flop
execute store result storage flop:internal chat_macro.m int 1 run scoreboard players get input.mantissa flop
function flop:internal/chat/copy_encoding with storage flop:internal chat_macro