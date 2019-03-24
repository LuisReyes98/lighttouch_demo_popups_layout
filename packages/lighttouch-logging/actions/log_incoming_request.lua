event = ["incoming_request_received"]
priority = 1
input_parameters = ["request"]

local fields = table.copy(request)
fields.model = "incoming-request"
fields.body = nil
fields.body_raw = nil

contentdb.write_file("incoming-request", request.uuid, fields, request.body_raw)
