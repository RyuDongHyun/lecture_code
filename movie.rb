boxoffice.json 파일에 있는 내용을 불러와서
가지고 놀아보기

require 'json'
require 'awesome_print'

file = File.read('boxoffice.json')
data = JSON.parse(file)
# puts data.keys

# title = data["cards"][0]["items"][0]["item"]["title"]
# genre = data["cards"][0]["items"][0]["item"]["main_genre"]
# rate = data["cards"][0]["items"][0]["item"]["filmrate"]
# directors = data["cards"][0]["items"][0]["item"]["directors"][0]["name"]
# poster = data["cards"][0]["items"][0]["item"]["poster"]


# # puts "제목 : " + title
# # puts "장르 : " + genre
# # puts "연령제한 : " + rate
# # puts "감독 : " + directors
# # ap poster

# # # json파일 안에는 몇개의 영화가 들어가 있을까?
# # puts data["cards"].size

# movies = Array.new

# # data["cards"].size.times do |x|
# #     movies.push(
# #         {
# #             "title" => data["cards"][x]["items"][0]["item"]["title"],
# #             "genre" => data["cards"][x]["items"][0]["item"]["main_genre"],
# #             "rate" => data["cards"][x]["items"][0]["item"]["filmrate"],
# #             "directors" => data["cards"][x]["items"][0]["item"]["directors"][0]["name"],
# #             "poster" => data["cards"][x]["items"][0]["item"]["poster"]
# #         }
# #     )
# # end
# list = data["cards"]
# list.each do |elem|
#     movies.push({
#             "title" => elem["items"][0]["item"]["title"],
#             "genre" => elem["items"][0]["item"]["main_genre"],
#             "rate" => elem["items"][0]["item"]["filmrate"],
#             "director" => elem["items"][0]["item"]["directors"][0]["name"],
#             "poster" => elem["items"][0]["item"]["poster"]        
#     })
# end

# movies.size.times do |x|
#     puts "제목 : " + movies[x]["title"]
#     puts "장르 : " + movies[x]["genre"]
#     puts "연령제한 : " + movies[x]["rate"]
#     puts "감독 : " + movies[x]["director"]
#     ap movies[x]["poster"]
# end

# #제목, 장르, X세 관람가, 감독, 포스터사진url

# # data= = {
# #     "cards"=>[{},{},{}],
# #     "load_more"=>XXX,
# #     "total"=>YYY
# # }

# puts [1,2,3].inject(3){|r, e| r}


# arr1=["1","2","3"]
# arr2=["a","b","c"]

# arr1.size.times do |x|
#     arr1[x] += arr2[x]
# end
# print arr1
# str = ""
# arr1.each do |a|
#     str += a
#     str += ""
# end
# puts str
won= 1234567
wons = []
each = ["원", "만", "억", "조", "경"]

until won==0
   puts won
   wons.push(won%10000)
   won = won/10000
end
print wons
# wons.size.times do |x|
#     wons[x] += each[x]
# end
# won_r = ""

# wons.reverse.each do |r|
#     won_r += r
#     won_r += " "
# end
