require 'socket'
require 'json'

host = 'localhost'
port = 2000
path = "/index.html"
params = Hash.new

puts "Are you sending a GET or a POST request?"
input = gets.chomp

if input.upcase == "GET"
	request = "GET #{path}HTTP/1.0\r\n\r\n"
elsif input.upcase == "POST"

	puts "Please give a name: "
	name = gets.chomp
	puts "And an email address: "
	email = gets.chomp

	params = {:viking => {:name => name, :email => email}}
	body = params.to_json

	request = "Post /thanks.html HTTP/1.0\nContent-Length: #{body.length}\r\n\r\n#{body}"

end

socket = TCPSocket.open(host, port)
socket.print(request)
response = socket.read

headers, body = response.split("\r\n\r\n", 2)
print body
socket.close