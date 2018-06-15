# 1. 원하는 메뉴들을 저장하고
# 2. 그 메뉴들 중에 하나를 랜덤을 뽑는다.
# 3. 뽑은 메뉴를 출력한다.

menu = ["선릉","양자강", "20층", "순남시래기", "김밥카페"]

#puts menu.methods.sort
puts menu.sort
puts [20,100,-19,29,2].sort

5.times do
    puts menu.sample
end