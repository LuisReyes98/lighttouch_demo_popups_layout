priority = 1
input_parameter = "request"
events_table = ["file_requested"]

request.method == "GET"
and
#request.path > 1
and not
models[request.path_segments[1]]
