package permit.custom.authz

import input.attributes.request.http as http_request

default allow = false

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
