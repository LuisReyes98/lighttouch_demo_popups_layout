event = ["file_requested"]
priority = 1
input_parameters = ["request"]

local dir = settings.files_path or "files"
local path = dir .. request.path -- Paths always start with '/'
local file_content = fs.read_file(path)

if not file_content then
  log.error("Could not open file " .. path)
  return {
    status = 404,
    headers = {},
    body = ""
  }
end

return {
  status = 200,
  headers = {
    ["content-type"] = mime.guess_mime_type(path),
  },
  body = file_content
}
