event = ["request_log"]
priority = 1
input_parameters = ["request"]

local log_uuid = request.path_segments[2]

local path = contentdb.get_document_path(log_uuid, "incoming_request")

if not path then
  return {
    status = 401,
    headers = {},
    body = "",
  }
end

local file_content = fs.read_file(path)
if not file_content then
  error("Could not read " .. path)
end

local log_content = yaml.to_table(file_content)

return {
  headers = { ["content-type"] = "application/json" },
  body = json.from_table(log_content)
}
