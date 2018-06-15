#launchy 친구를 불러온다.
#launchy에게 브라우저를 열어달라고 한다.

require "launchy"
require "uri"
#"https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=3d printing"
#Launchy.open()
keywords = ["아이유","설현","수지"]
url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="

n = 0;
while n < 3
    keyword = URI.encode(keywords[n])
    Launchy.open(url + keyword)
    n +=1
end

