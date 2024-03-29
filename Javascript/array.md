# 자바스크립트의 배열(Array)

#### 배열의 개념
- 자바스크립트에서 배열(array)은 이름과 인덱스로 참조되는 정렬된 값의 집합으로 정의됩니다.
- 배열을 구성하는 각각의 값을 배열 요소(element)라고 하며, 배열에서의 위치를 가리키는 숫자를 인덱스(index)라고 합니다.


#### 배역의 특징
1. 배열 요소의 타입이 고정되어 있지 않으므로, 같은 배열에 있는 배열 요소끼리의 타입이 서로 다를 수도 있습니다.
2. 배열 요소의 인덱스가 연속적이지 않아도 되며, 따라서 특정 배열 요소가 비어 있을 수도 있습니다.
3. 자바스크립트에서 배열은 Array 객체로 다뤄집니다.


#### 배열의 생성
[문법]

```
1. var arr = [배열요소1, 배열요소2,...];          // 배열 리터럴을 이용하는 방법
2. var arr = Array(배열요소1, 배열요소2,...);     // Array 객체의 생성자를 이용하는 방법
3. var arr = new Array(배열요소1, 배열요소2,...); // new 연산자를 이용한 Array 객체 생성 방법
```

#### 배열 요소의 추가
[문법]
```
1. arr.push(추가할 요소);         // push() 메소드를 이용하는 방법
2. arr[arr.length] = 추가할 요소; // length 프로퍼티를 이용하는 방법
3. arr[특정인덱스] = 추가할 요소; // 특정 인덱스를 지정하여 추가하는 방법
```

[예제]
```
var arr = [1, true, "Java"];

arr.push("Script");           // push() 메소드를 이용하는 방법
document.write(arr + "<br>"); // 1,true,Java,Script

arr[arr.length] = 100;        // length 프로퍼티를 이용하는 방법
document.write(arr + "<br>"); // 1,true,Java,Script,100

arr[10] = "자바스크립트";     // 특정 인덱스를 지정하여 추가하는 방법
document.write(arr + "<br>"); // 1,true,Java,Script,100,,,,,,자바스크립트
document.write(arr[7]);       // undefined
```


- 위의 예제에서 배열 arr의 길이는 최종적으로 11이 됩니다.<br>
이때 배열 요소가 존재하는 인덱스는 0, 1, 2, 3, 4, 10뿐이며, 나머지 인덱스에는 배열 요소가 존재하지 않습니다.


- 이렇게 인덱스에 대응하는 배열 요소가 없는 부분을 배열의 홀(hole)이라고 합니다.<br>
자바스크립트에서는 이러한 배열의 홀(hole)을 undefined 값을 가지는 요소처럼 취급합니다.<br>
따라서 위의 예제에서처럼 배열의 홀을 참조하게 되면 undefined 값을 반환하게 됩니다.<br>


#### 배열의 활용
1. 희소배열 
 - 희소 배열이란 배열에 속한 요소의 위치가 연속적이지 않은 배열을 의미합니다.<br>
   따라서 희소 배열의 경우 배열의 length 프로퍼티 값보다 배열 요소의 개수가 언제나 적습니다.
2. 다차원 배열
 - 배열 요소과 또 다른 배열인 배열을 의미한다.
3. 연관배열
 - 자바스크립트에서 배열의 인덱스에는 0을 포함한 양의 정수만을 사용할 수 있습니다.<br>
   이렇게 숫자로 된 인덱스 대신에 문자열로 된 키(key)를 사용하는 배열을 연관 배열(associative array)이라고 합니다. 
 - 대부분의 프로그래밍 언어가 지원하는 연관 배열을 자바스크립트는 별도로 제공하지는 않습니다.<br>
   대신에 인덱스로 문자열을 사용하여 연관 배열처럼 사용할 수 있는 객체(object)를 만들 수 있습니다.
   
[예제] - 연관배열
```
var arr = [];     // 비어있는 배열을 생성함.

arr["하나"] = 1;  // 숫자 인덱스 대신에 문자열을 인덱스로 배열 요소를 추가함.
arr["참"] = true;
arr["자바스크립트"] = "JavaScript";

document.write(arr["참"]);  // 문자열을 인덱스로 배열 요소에 접근할 수 있음.
document.write(arr.length); // 연관 배열은 Array 객체가 아니므로 length 프로퍼티의 값이 0임.
document.write(arr[0]);     // undefined
```
