event = ["incoming_response_received"]
priority = 1
input_parameters = ["response"]

local fields = table.copy(response)
fields.model = "incoming-response"
fields.body = nil
fields.body_raw = nil

contentdb.write_file("incoming-response", response.uuid, fields, response.body_raw)
