local decode = require("cjson").new().decode
return assert(decode([===[
]===]))