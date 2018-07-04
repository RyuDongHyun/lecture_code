# CSS

- Cascading Style Sheet
- 스타일 속성이 아래쪽으로 쭉 흘러내려(상속되어)가는 모습
- 마치 폭포처럼 떨어져 내리는 것 같아 Cascading이라고 함.



### 설명

- HTML의 문서구조 == Tree(나무)

  : html문서는 큰 줄기로 부터 여러개의 작은 줄기로 뻗어나가는 나무와 같은 구조를 가지고 있음.

  : Style Sheet를 적용할 때 각 단위별로 적용이 가능한데 그 방법은 다음과 같이 있음.

  1. 태그 => `tag{ }` 
  2. id => `#id{ }` 
  3. class => `.class{ }`

```css
 /* tag에 적용한 경우 */ 
p { color: red;}

 /* id에 적용한 경우 */ 
#name { color: blue;}

/* class에 적용한 경우 */ 
.important { color: green;} 
.primary{color: blue;}
.secondary{color: grey;}
.success{color: green;}

/* table은 많은 tr태그, 그 아래 th, td태그들이 있지만*/
/* 아래와 같이 table에 style sheet를 적용하면 */
/* 그곳에 속해있는 모든 태그들에 style이 적용된다. 마치 폭포수가 위에서 아래로 떨어지듯..*/
table {color: blueviolet;}
/* table태그 안에있는 특정 태그에 다른 style을 적용하고 싶다면*/
/* 해당 태그에 id 나 class를 지정한 후 적용한다. 마치 폭포수에 돌이 튀어나와있는 것처럼..*/
.a {color: salmon;}


```



- 아래와 같이 html 문서가 있다고 가정.

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>테스트 문서</title>
        <link rel="stylesheet" type="text/css" href="style.css">     
    </head>
    <body>
        <h1 class="success">숨지 않은 요소 찾기</h1>
        <div>
            <p id="name">관리자 이름 : 루비</p> 
            <p id="phone">관리자 연락처 : 010-1234-5678</p>
            <p id="email">관리자 이메일 : asdf@asdf.com</p>
            <p class="important">자기소개 : 안녕</p>
            <p class="important">각오 : 잘하자</p>
            <p class="important">좌우명 : 끝까지</p>
        </div>
        <table>
            <tr>
                <th class="a">이메일</th>
                <th class="a">비밀번호</th>
            </tr>
            <tr>
                <td>123@123.com</td>
                <td>123</td>
            </tr>
            <tr>
                <td>asd@asd.com</td>
                <td>asd</td>
            </tr>
        </table>
    </body>
</html>
```



