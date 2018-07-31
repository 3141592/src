require 'rubygems'
require 'restclient'
require 'crack'
#WURL = 'http://en.wikipedia.org/w/api.php?action=opensearch&namespace=0&suggest=&search='
WURL = 'https://www.chat-avenue.com/generalchat.html'

  resp = RestClient.get("#{WURL}", 'User-Agent' => 'Ruby')
  resp = RestClient::Request.execute method: :get, url: #{WURL}, user: 'guest' 
  arr = Crack::JSON.parse(resp)
  puts arr
  sleep 0.5
