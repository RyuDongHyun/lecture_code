# 사람 C 동물 C 유기체 =>이런 형태의 구조
# 학생 C 사람

#특정 기능들(메소드들)의 집합
#클래스 인스턴스의 속성을 정의할 수 없다.
#하지만 상수(constant)를 넣어서 저장할 수 있다.
#변수는 넣지 못한다.

module Move
    #description(상수), 전부다 대문자로 써줘야 함!!
    DESC = "움직임에 관련된 모듈입니다."

    def walk
        puts "뚜벅뚜벅"
    end
end

class Person
    include Move

    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
    end
    attr_accessor :name, :age, :gender

    def eat
        puts "냠냠냠"
    end
    # def walk
    #     puts "뚜벅뚜벅"
    # end
end


class Student < Person #상속 : Person안에 있는 특징을 Student에 가져온다.
    def study
        puts "Ruby 배우고 있음."
    end
end

class Robot < Person
    include Move

    # def initialize(name)
    #     @name = name
    # end
    attr_accessor :name
    # def walk
    #     puts "뚜벅뚜벅"
    # end
end


# hongsuk = Person.new("홍석", "28", "male")

# # puts hongsuk.name
# # puts hongsuk.eat
# puts hongsuk.study

ruby = Student.new("ruby","3","??")
hongsuk = Person.new("홍석", "28", "male")
donghyun = Robot.new("동현", "27", "male")

#puts Robot.ancestors
# hongsuk.walk
# donghyun.walk

# #모듈안에 들어있는 내용 가져오기
# puts Move::DESC

# #예시 Ruby에서 기본적으로 제공하는 모듈
# puts Math::PI
puts donghyun.name


