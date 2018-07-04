require 'httparty'
require 'uri'

url= "https://api.telegram.org/bot"
token= "604276064:AAGUPfQbaGF6lTeSgoe9YDmo5k6W3YH0fgI"

id= "607343068"
msg= URI.encode("배고프다~")
url + token + "/sendMessage?chat_id=#{id}&text=#{msg}"

# res = HTTParty.get(url+token+"/getMe")
# hash = JSON.parse(res.body)

HTTParty.get(
    url + token + 
    "/sendMessage?chat_id=#{id}&text=#{msg}"
    )
puts hash