require 'socket'

server  = TCPServer.new('0.0.0.0', 80)

loop do
  client  = server.accept
  request = client.readpartial(2048)
  
  method, path, version = request.lines[0].split

  puts "#{method} #{path} #{version}"

  if path == "/healthcheck"
    client.write("HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nOK")
  else
    client.write("HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nWell, hello there!")
  end

  client.close

rescue EOFError
  # Handle the end of the file (client closed the connection)
  client.close
end

