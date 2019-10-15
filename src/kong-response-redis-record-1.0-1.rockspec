package = "kong-response-redis-record"
version = "1.0-1"
source = {
  url = "http://github.com/ruralhermit/kong-response-redis-record"
}
description = {
  summary = "A Kong plugin that will cache responses in redis",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-response-redis-record.handler"] = "handler.lua",
    ["kong.plugins.kong-response-redis-record.schema"]  = "schema.lua"
  }
}