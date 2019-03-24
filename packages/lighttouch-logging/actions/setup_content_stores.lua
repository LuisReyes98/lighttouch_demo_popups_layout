event = ["lighttouch_loaded"]
priority = 50
input_parameters = []

local stores = {"incoming-request", "incoming-response", "outgoing-request", "outgoing-response"}

for _, id in pairs(stores) do
  local dir = "log/" .. id .. "/"
  contentdb.stores[id] = dir
  fs.create_dir(dir, true)
end
