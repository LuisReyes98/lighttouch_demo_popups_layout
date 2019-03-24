event = ["request_document_json"]
priority = 1
input_parameters = ["request"]


-- GET /[type]/[uuid]
local model_name, id = request.path_segments[1], request.path_segments[2]

local fields, body, store = contentdb.read_document(id)
if not fields then
  return {
    headers = { ["content-type"] = "application/json" },
    body = json.from_table({msg="Document not found"})
  }
end

if fields.model ~= model_name then
  return {
    headers = { ["content-type"] = "application/json" },
    body = json.from_table({msg="Document is not of model " .. model_name})
  }
end


return {
  headers = { ["content-type"] = "application/json" },
  body = json.from_table({
    id = id,
    store = store,
    fields = fields,
    body = body
  })
}
