class Person
    @@number = 0 #클래스가 사용하는 변수
    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
        @@number += 1
    end
    attr_accessor :name, :age, :gender

    def Person.number #클래스가 사용하는 메소드
        @@number
    end
end

hongsuk = Person.new("홍석", "28", "male")
yerim = Person.new("예림", "27", "female")
dh1 = Person.new("동현1", "27", "male")
dh2 = Person.new("동현2", "27", "male")
dh3 = Person.new("동현3", "27", "male")

puts Person.number

module DataMapper
    module Resource
        SANGSU="정상수"
    end
end

puts DataMapper::Resource::SANGSU