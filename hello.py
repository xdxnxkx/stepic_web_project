def app(environ, start_response):
    start_response("200 OK", [("Content-Type", "text/plain")])
    qs = str(environ['QUERY_STRING'])
    nqs = ''
    for x in qs:
        if x == '&':
            nqs += '\n'
        nqs += x
    return [nqs]
