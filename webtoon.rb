require 'httparty'
require 'pp'
require 'json'

days=["mon", "tue", "wed", "thu", "fri", "sat", "sun"]

days.each do |day|
    url = "http://webtoon.daum.net/data/pc/webtoon/list_serialized/"
    response = HTTParty.get(url+day)
    data = JSON.parse(response.body)

    list = data["data"]
    webtoons = Array.new
    list.each do |element|
        webtoons.push(
            "title" => element["title"],
            "appThumbnailImage" => element["appThumbnailImage"]["url"],
            "introduction" => element["introduction"],
            "genres" => element["cartoon"]["genres"],
            "averageScore" => element["averageScore"]
        )
    end

    puts "#############################"
    puts day.capitalize
    puts "#############################"
    webtoons.each do |web|
        gen = ""
        puts "제목 : " + web["title"]
        puts "썸네일 url : " + web["appThumbnailImage"]
        puts "소개글 : " + web["introduction"]
        web["genres"].each do |g|
            gen += g["name"]
            gen += " "
        end
        puts "장르 : " + gen.chomp
        puts "평점 : " + web["averageScore"].round(2).to_s + "점"
        puts ""
    end
end
