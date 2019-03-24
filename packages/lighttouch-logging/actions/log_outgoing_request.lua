event = ["outgoing_request_about_to_be_sent"]
priority = 1
input_parameters = ["request"]

local fields = table.copy(request)
fields.model = "outgoing-request"
fields.body = nil
fields.body_raw = nil

contentdb.write_file("outgoing-request", request.uuid, fields, request.body_raw)
