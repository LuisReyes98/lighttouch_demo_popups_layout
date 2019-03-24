priority = 3
input_parameter = "request"
events_table = ["request_log"]

request.method == "GET"
and
#request.path_segments == 2
and
request.path_segments[1] == "log"
and
uuid.check(request.path_segments[2])
