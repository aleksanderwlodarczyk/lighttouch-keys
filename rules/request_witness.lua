priority: 1
if
	request.method == "GET"
	and
	#request.path_segments == 3
	and
	request.path_segments[1]:match("%a+") -- TODO: make it a known type, not just any word
	and
	uuid.check(request.path_segments[2])
	and
	request.path_segments[3] == "witness"
	then
    events["witness_request"]:trigger(request)
end
