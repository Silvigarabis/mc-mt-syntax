(execute )

# 匹配可能的目标选择器
(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|[^0-9\s]\S*))
(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|[^0-9\[\]\{\}\\\+\-\^]\S*))
1: 目标选择器
2: 目标选择器参数
3: 目标

由@daoge_cmd提供
("@(?:[aeprs]|initiator)(?:\[.*])?"|@(?:[aeprs]|initiator)(?:\[[^ ]*])?|"[A-Za-z][A-Za-z0-9\s]*"|[A-Za-z][A-Za-z0-9_]*)


(((?:(?: *~)?|\x20+)(?:\d+(?:.\d+)?)?)((?:(?: *~)?|\x20+)(?:\d+(?:.\d+)?)?){0,2})

((?:~?-?\d+\.(?:\d+)?)|~)( +(?:~?-?\d+\.(?:\d+)?)| *~){0,2}

( +(?:~?-?\d+(?:\.\d+)?)| *~){0,3}

#匹配坐标（无法匹配局部）
(\b(?:~?[\-\+]?\d+(?:\.\d+)?)|~)( +(?:~?[\-\+]?\d+(?:\.\d+)?)| *~){0,2}

#匹配局部坐标
((?:\^[\-\+]?\d+(?:\.\d+)?)|\^)( +(?:\^[\-\+]?\d+(?:\.\d+)?)| *\^){0,2}

#合起来，匹配坐标
((?:(?:\^[\-\+]?\d+(?:\.\d+)?)|\^)(?: +(?:\^[\-\+]?\d+(?:\.\d+)?)| *\^){0,2}|(?:\b(?:~?[\-\+]?\d+(?:\.\d+)?)|~)(?: +(?:~?[\-\+]?\d+(?:\.\d+)?)| *~){0,2})

execute @s ~ ~3 ~-6 detect ^7 ^-87 ^8 nenwn2kk2_jejnene -28
         ^2 ^5 ^3
         
         ~~~

#匹配旋转角参数
(?:(~?-?[0-9]+(?:\.[0-9]+)?)(?: +(~?-?[0-9]+(?:\.[0-9]+)?)))

#/execute
(execute)(?: +(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|\S+))(?: +((?:(?:\^-?\d+(?:\.\d+)?)|\^)(?: +(?:\^-?\d+(?:\.\d+)?)| *\^){0,2}|(?:\b(?:~?-?\d+(?:\.\d+)?)|~)(?: +(?:~?-?\d+(?:\.\d+)?)| *~){0,2})(?: +(detect)(?: +((?:(?:\^-?\d+(?:\.\d+)?)|\^)(?: +(?:\^-?\d+(?:\.\d+)?)| *\^){0,2}|(?:\b(?:~?-?\d+(?:\.\d+)?)|~)(?: +(?:~?-?\d+(?:\.\d+)?)| *~){0,2})(?: +(\S+)(?: +(-?\d+))?)?)?)?)?)?

1: command
2: selector
3: selector arguments
4: coords
5: subcommand detect
6: coords
7: block (string)
8: data ( number )

#测试
(test )((a){1,})

test a a a a a a a a

#/execute new ver
execute if blocks ~~~~~~~~~ all if score @s mmm matches 3.. if score @a[tag=hhh] var_1 = @s var_2 if score @s scohhhre = @s djdjjr if score as sss matches 29 positioned as @s if entity as at @r if block ~~~ becrock 4444 unless block ~ ~-9862.228 ~ bbbbb -82882 run say hello world!

(\b(?:\^-?\d+(?:\.\d+)?)|\^)( +(?:\^-?\d+(?:\.\d+)?)| *\^){2}

#匹配id
[A-Za-z0-9_:]{1,}

#/replaceitem entity
replaceitem entity @s slot.xxxxxxx 0 [keep|replace] <item> [data] [component]
(replaceitem) +(?:(entity)(?: +(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|\S+))(?: +(?:(slot\.[\S\.]{1,})|([^\s]+))(?: +(\d+)(?:(?: +(keep|replace))? +(?:([A-Za-z0-9_:]{1,}))(?: +(\d+))?)?)?)?)?)
(replaceitem) +(?:(entity)(?: +(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|\S+))(?: +(?:(slot(?:\.(?:(?:weapon(?:\.(?:offhand|mainhand))?|armor(?:\.(?:chest|legs|feet|head))?|enderchest|hotbar|inventory|saddle|chest|equippable)))?)|(\S+))(?: +(\d+)(?:(?: +(keep|replace))? +(?:([A-Za-z0-9_:]{1,}))(?: +(\d+))?)?)?)?)?)
slot(?:\.(?:(?:weapon(?:\.(?:offhand|mainhand))?|armor(?:\.(?:chest|legs|feet|head))?|enderchest|hotbar|inventory|saddle|chest|equippable)))?
1: command
2: subcommand
3: selector
4: selectorArgs
5: name
6: meta
7: error
8: number
9: meta / subcommand
10: item
11: number

#/replaceitem block ~ ~ ~ slot.container 2 replace keep 3

replaceitem block ~ ~ ~ slot.container
(replaceitem)(?: +(block)(?: +((?:(?:\^-?\d+(?:\.\d+)?)|\^)(?: +(?:\^-?\d+(?:\.\d+)?)| *\^){0,2}|(?:\b(?:~?-?\d+(?:\.\d+)?)|~)(?: +(?:~?-?\d+(?:\.\d+)?)| *~){0,2})(?: +(?:(slot.container)|(\S+))(?: +(\d+)(?: +(\d+)(?:(?: +(keep|replace))? +(?:([A-Za-z0-9_:]{1,}))(?: +(\d+)(?: +(\d+))?)?)?)?)?)?)?)?
(replaceitem)(?: +(block)(?: +((?:(?:\^-?\d+(?:\.\d+)?)|\^)(?: +(?:\^-?\d+(?:\.\d+)?)| *\^){0,2}|(?:\b(?:~?-?\d+(?:\.\d+)?)|~)(?: +(?:~?-?\d+(?:\.\d+)?)| *~){0,2})(?: +(?:(slot.container)|(\S+))(?: +(\d+)(?: +(?:(keep|replace) +)?(?:([A-Za-z0-9_:]{1,}))(?: +(\d+)(?: +(\d+))?)?)?)?)?)?)
1: command
2: subcommand
3: coords
4: meta
5: error
6: number
6: subcommand
7: meta/item
8: number
9: variable

# event
(event)(?: +(?:(entity)|(\S+))(?: +(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|\S+))(?: +(\S+))?)?)
event entity @s qqajsjej

# tag
(tag)(?: +(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|\S+))(?: +(?:(?:(add|remove)(?: +(".*(?<!\\)"|\S+))?|(list))))?)?

tag @s remove "siwjjwjwk:  nwwjkwksnwnjwwjajwkkekeke@jwjjw"
tag @s list

#clear
(clear)(?: +(?:(?:(@\S)( *?\[.*\])?)|(".*(?<!\\)"|\S+))(?: +(\S+)(?: +(-?\d+)(?: +(-?\d+))?)?)?)?
clear @s apple 0 2
#
give @s apple 23 0 { "item_lock": { "mode": "lock_in_inventory"}, "keep_on_death": {}           }

execute anchored eyes facing entity @s eyes rotated as sjnsmwmee rotated ~29292929.28282828282 ~929292.222
execute in ？？？ run execute if entity @s unless entity "jene3n3n3j3jj" run say awa
summon @jwjsjsnd ~ ~ ~ jwjwjn2 jshhwh2hb2
summon awn2 "73+33js2idf" ~ ~ ~
setblock 

execute if blocks ~~~ ~~~ ~ ~ ~ masked

teleport @s sjjw2i2 false

tp @s 2 255 245 facing ~77 ~76 ~-6

tp @s 2 255 245 facing @s unknown

tp ^ ^+2.5 ^3

#bug

tp ^ ~ ~

tp 244 191 134.2 ~-21.4 -87

execute rotated ~0 ~288393

replaceitem entity @s slot.weapon

@s[name="j2j2j, "]

("@(?:[aeprs]|initiator)(?:\[.*])?"|@(?:[aeprs]|initiator)(?:\[[^ ]*])?|"[A-Za-z][A-Za-z0-9\s]*"|[A-Za-z][A-Za-z0-9_]*)
@s 239


effect aajwjw nsnwnwnw 255 245 false