# 함수(function)


#### 함수의 개념
- 함수(function)란 하나의 특별한 목적의 작업을 수행하도록 설계된 독립적인 블록을 의미합니다.<br>
  이러한 함수는 필요할 때마다 호출하여 해당 작업을 반복해서 수행할 수 있습니다.
  
#### 함수의 정의
 - 자바스크립트에서 함수의 정의는 function 키워드로 시작되며, 다음과 같은 구성요소를 가집니다.
1. 함수의 이름
2. 괄호 안에 쉼표(,)로 구분되는 함수의 매개변수(parameter)
3. 중괄호({})로 둘러싸인 자바스크립트 실행문

[문법]
```
function 함수이름(매개변수1, 매개변수2,...) {
    함수가 호출되었을 때 실행하고자 하는 실행문;
}
```

 - 함수 이름(function name)은 함수를 구분하는 식별자(identifier)입니다.<br>
   매개변수(parameter)란 함수를 호출할 때 인수(argument)로 전달된 값을 함수 내부에서 사용할 수 있게 해주는 변수입니다.
   
[예제]
```
// addNum라는 이름의 함수를 정의함.
function addNum(x, y) {    // x, y는 이 함수의 매개변수임.
    document.write(x + y);
}
addNum(5, 7);              // addNum() 함수에 인수로 5와 7을 전달하여 호출함.
```

#### 변수의 유효범위
1. 지역 변수(local variable)
 - 지역 변수(local variable)란 함수 내에서 선언된 변수를 가리킵니다.
   이러한 지역 변수는 변수가 선언된 함수 내에서만 유효하며, 함수가 종료되면 메모리에서 사라집니다.

2. 전역 변수(global variable)
 - 전역 변수(global variable)란 함수의 외부에서 선언된 변수를 가리킵니다.
   이러한 전역 변수는 프로그램의 어느 영역에서나 접근할 수 있으며, 웹 페이지가 닫혀야만 메모리에서 사라집니다.
   
#### 