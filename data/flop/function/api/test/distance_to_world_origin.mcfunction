data modify storage flop:api input set from entity @s Pos[0]
function flop:api/storage/read_as_eroxifloat
function flop:api/eroxifloat/square
scoreboard players operation operand.a.sign flop = output.sign flop
scoreboard players operation operand.a.exponent flop = output.exponent flop
scoreboard players operation operand.a.mantissa flop = output.mantissa flop

data modify storage flop:api input set from entity @s Pos[1]
function flop:api/storage/read_as_eroxifloat
function flop:api/eroxifloat/square
scoreboard players operation operand.b.sign flop = output.sign flop
scoreboard players operation operand.b.exponent flop = output.exponent flop
scoreboard players operation operand.b.mantissa flop = output.mantissa flop
function flop:api/eroxifloat/add
scoreboard players operation operand.a.sign flop = output.sign flop
scoreboard players operation operand.a.exponent flop = output.exponent flop
scoreboard players operation operand.a.mantissa flop = output.mantissa flop

data modify storage flop:api input set from entity @s Pos[2]
function flop:api/storage/read_as_eroxifloat
function flop:api/eroxifloat/square
scoreboard players operation operand.b.sign flop = output.sign flop
scoreboard players operation operand.b.exponent flop = output.exponent flop
scoreboard players operation operand.b.mantissa flop = output.mantissa flop
function flop:api/eroxifloat/add
scoreboard players operation input.sign flop = output.sign flop
scoreboard players operation input.exponent flop = output.exponent flop
scoreboard players operation input.mantissa flop = output.mantissa flop
function flop:api/eroxifloat/sqrt

function flop:api/eroxifloat/write_to_double

tellraw @s {"text":"distance: ","extra":[{"storage":"flop:api","nbt":"output"}]}