execute if score output.mantissa flop < #const.2^14 flop run scoreboard players remove output.exponent flop 16
execute if score output.mantissa flop < #const.2^14 flop run scoreboard players operation output.mantissa flop *= #const.2^16 flop

execute if score output.mantissa flop < #const.2^22 flop run scoreboard players remove output.exponent flop 8
execute if score output.mantissa flop < #const.2^22 flop run scoreboard players operation output.mantissa flop *= #const.2^8 flop

execute if score output.mantissa flop < #const.2^26 flop run scoreboard players remove output.exponent flop 4
execute if score output.mantissa flop < #const.2^26 flop run scoreboard players operation output.mantissa flop *= #const.2^4 flop

execute if score output.mantissa flop < #const.2^28 flop run scoreboard players remove output.exponent flop 2
execute if score output.mantissa flop < #const.2^28 flop run scoreboard players operation output.mantissa flop *= #const.2^2 flop

execute if score output.mantissa flop < #const.2^29 flop run scoreboard players remove output.exponent flop 1
execute if score output.mantissa flop < #const.2^29 flop run scoreboard players operation output.mantissa flop *= #const.2^1 flop
