# json 해쉬형태 굳~!
# ruby에서 채용
# {"asdf" => "asdf"} or {asdf: "asdf"}
#해쉬를 만드는 3가지 방법
donghyun={"name"=>"donghyun", "age"=>"27", "gender"=>"male"}
hongsuk={:name => "hongsuk", :age =>"27", :gender=>"male"}
# ruby 1.7버전부터 업그레이드 됨
# yerim={:name=> "yerim", :age=> "27", :gender=> "female"}_내부적으로 생김
yerim={name: "yerim", age: "27", gender: "female"} # json버전으로 업그레이드 되었기 때문

#jongwon={"name" : "jongwon"}(X) #string형태로 key를 만들고 :를 하면 ruby 이해불가

# puts donghyun["name"]
# puts hongsuk[:name] #params[:name]
# puts yerim[:name]

# 사람 C 동물 C 유기체 =>이런 형태의 구조
# 학생 C 사람

class Student
    # name, age, gender
    def initialize(name, age, gender) #initialize : 예약된 메소드
        @name = name
        @age = age
        @gender = gender
    end

    #attribute(속성), 인스턴스 변수
    attr_accessor :name, :age, :gender # getter, setter 함수를 동시에 만들어 줌. #symbol 형태로

    #attr_reader :name, :age, :gender # 아래 getter함수들을 한 줄에 만들어주는 기능 #symbol 형태로

    #######################################
    # def name
    #     @name
    # end

    # def age
    #     @age
    # end

    # def gender # 클래스안에 인스턴스 변수를 가져오는 함수 == getter 함수
    #     @gender
    # end
    #######################################

    #attr_writer :name, :age, :gender # 아래 setter함수들을 한 줄에 만들어주는 기능 #symbol 형태로

    ##########################################
    # def name=(input) #클래스안에 인스턴스 변수를 설정하는 함수 == setter 함수 
    #     @name=input
    # end

    # def age=(input)
    #     @age=input 
    #  end

    # def gender=(input)
    #    @gender=input 
    # end
    ###########################################

    def sing
        puts "어찝니까~"
    end

    def dance
        puts "싫드아~"
    end


end

changwon = Student.new("창원","28","male") #new=>initialize메소드를 불러오는
yerim = Student.new("예림","27","female")

puts changwon.name
puts changwon.age
puts changwon.gender

changwon.name = "최"
puts changwon.name
puts changwon.sing
puts changwon.dance

