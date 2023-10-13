package permit.custom

import input.attributes.request.http as http_request

default allow = false

# You can find the official Rego tutorial at:
# https://www.openpolicyagent.org/docs/latest/policy-language/
# Example rule - you can replace this with something of your own
# allow {
# 	input.user.key == "test@permit.io"
# }
# Also, you can add more allow blocks here to get an OR effect
# allow {
#     # i.e if you add my_custom_rule here - the policy will allow
#     # if my_custom_rule is true, EVEN IF policies.allow is false.
#     my_custom_rule
# }


parsed_path := split_path(http_request.path)

allow {
    http_request.method == "GET"
    some i
    parsed_path[i] == token.payload.userID
    token.payload.role == "admin"
}

token := {"payload": payload} {
    [_, jwt_token] := split(http_request.headers.authorization, " ")
    io.jwt.decode(jwt_token, [_, payload, _])
}

split_path(str) = parts {
    trimmed := trim(str, "/")
    parts := split(trimmed, "/")
}


