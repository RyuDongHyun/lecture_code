require 'httparty'
require 'json'
require 'pp'

base = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?"
key = "b206846dd21134010ebb048a822f8b54"
targetDt = "20180703"

response = HTTParty.get(base + "key=" + key + "&" + "targetDt=" + targetDt)
data = JSON.parse(response.body)
# pp response.body.class

movies = Array.new
data["boxOfficeResult"]["dailyBoxOfficeList"].each do |movie|
    movies.push({
        "rank" => movie["rank"],
        "title" => movie["movieNm"],
        "sales" => movie["salesAcc"] ,
        "audi" => movie["audiAcc"]
    })
end

puts targetDt + " 기준"

movies.each do |movie|
    puts "랭크 : " + movie["rank"]
    puts "제목 : " + movie["title"]
    puts "누적 매출액 :" + movie["sales"] + "원"
    puts "누적 관객수 :" + movie["audi"] + "명"
    puts ""
end





# 순위 rank
# 제목 title
# 누적매출액 sales
# 누적관객수 audi
