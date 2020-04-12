@app
begin-app

@http
get /test
get /test2
get  /todos
post /todos
post /todos/delete
get /shop/:product

@static
folder dist

@scheduled
cleanup rate(3 day)

@queues
system-backup

@tables
data
  scopeID *String
  dataID **String
  ttl TTL
