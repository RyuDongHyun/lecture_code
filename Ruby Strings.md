# OOP

:Object Oriented Programming(객체지향 프로그래밍)



### 철학자가 세상에 대해 생각할 때

1. 모든 것은 주어, 동사로 표현이 가능하다.
2. 세상에 모든 것은 분류가 가능하다.  ex) 나무, 꽃, 
3. 그 분류들은 계층이 있다. ex) 사람 > 포유류 > 동물 > 유기체



각각의 그룹마다 특징이 있다.

하나의 공통된 분류체계를 만들자!

Class 개념 등장!!



### Class

:  여러가지 객체들의 공통된 속성과 기능들로 분류하여 모아놓은 것.

: ex) 붕어빵 틀



### Class를 보는 습관

- "hello".class => String
- String.ancestors => [String, Comparable, Object, Kernel, BasicObject]
- Integer class, Float class



### 상속

분류체계에서 위에 있는 클래스에 있는 특징을 가져오는 것.



### Instance(=Object)

:붕어빵 틀로 찍어낸 것 붕어빵



### Module(모듈)

: 클래스 내의 특정 기능들을 한데 모아놓은 곳.

: include 하여 사용가능



### ::(더블콜론)

=> 모듈에 특정 상수나 메소드를 뽑아 올때 사용, 모듈안에 모듈을 불러올때



### Ruby Strings

1. String("name")
2. Symbol(:name)



### Symbol??



: 모든 것은 오브젝트이기 때문에 각각의 ID가 부여됨

ex) "hello".object_id => 23822560

변수는 일정 메모리 공간이 할당된 공간



둥둥 떠다니는 "hello"

주소를 찍을때마다 달라짐, 고유하지 않음



:hello 저장 공간이 할당됨, 고유함 => symbol

`Symbol.all_symbols.last(10)`

심볼아 관리하고있는 모든 심볼들을 10개 가져와



변수에 저장된거 같은 느낌의

글자이지만 값이 변하지 않는다.



활용할 예시)

해쉬에서 `key` 값을 관리하기 위해 

중복방지, 유용함.





