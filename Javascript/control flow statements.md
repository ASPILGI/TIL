# 자바스크립트의 제어문


### 1. 조건문
- 조건문이란 프로그램 내에서 주어진 표현식의 결과에 따라 별도의 명령을 수행하도록 제어하는 실행문입니다.
- 자바스크립트에서 사용할 수 있는 조건문의 형태는 다음과 같습니다.
1. if 문
2. if / else 문
3. if / else if / else 문
<img src="https://user-images.githubusercontent.com/84302546/198542872-05381463-3490-47f9-82b4-cd1db92b0d4f.png" width="500" height="300"/>

[문법]

```
if (표현식1) {
    표현식1의 결과가 참일 때 실행하고자 하는 실행문;
} else if (표현식2) {
    표현식2의 결과가 참일 때 실행하고자 하는 실행문;
} else {
    표현식1의 결과도 거짓이고, 표현식2의 결과도 거짓일 때 실행하고자 하는 실행문;
}
```

4. switch 문

[문법]

```
switch (조건 값) {
    case 값1:
        조건 값이 값1일 때 실행하고자 하는 실행문;
        break;
    case 값2:
        조건 값이 값2일 때 실행하고자 하는 실행문;
        break;
    ...
    default:
        조건 값이 어떠한 case 절에도 해당하지 않을 때 실행하고자 하는 실행문;
        break;
}
```


### 2. 반복문
- 반복문이란 프로그램 내에서 똑같은 명령을 일정 횟수만큼 반복하여 수행하도록 제어하는 실행문입니다.
- 자바스크립트에서 사용할 수 있는 반복문의 형태는 다음과 같습니다.
1. while 문
2. do / while 문
<img src="https://user-images.githubusercontent.com/84302546/198546736-103537fc-b3f1-41e5-b718-824e8fdd5216.png" width="300" height="300"/>

[문법]

```

do {
    표현식의 결과가 참인 동안 반복적으로 실행하고자 하는 실행문;
} while (표현식);
```

3. for 문
<img src="https://user-images.githubusercontent.com/84302546/198547420-bf1360b0-309b-4f76-946a-e47eb509d47f.png" width="300" height="300"/>

[문법]

```
for (초기식; 표현식; 증감식) {
    표현식의 결과가 참인 동안 반복적으로 실행하고자 하는 실행문;
}
```

5. for / in 문
6. for / of 문


### 3. 기타 제어문
1. label 문
  - label 문은 프로그램 내의 특정 영역을 식별할 수 있도록 해주는 식별자입니다.
  - label 문을 사용하면 continue 문과 break 문의 동작이 프로그램의 흐름을 특정 영역으로 이동시킬 수 있습니다.

[문법]

```
label:
식별하고자 하는 특정 영역
```

[예제]

```
arrIndex:
for (var i in arr) {
    document.write(i);
}
```

2. continue 문
  - continue 문은 루프 내에서 사용하여 해당 루프의 나머지 부분을 건너뛰고, 바로 다음 표현식의 판단으로 넘어가게 합니다.
  - 보통 반복문 내에서 특정 조건에 대한 처리를 제외하고자 할 때 자주 사용됩니다.

[문법]

```
1. continue;
2. continue 라벨이름;
```

[예제] - 1부터 100까지의 정수 중에서 3의 배수를 제외하고 출력하는 예제입니다.

```
var exceptNum = 3;
for (var i = 0; i <= 100; i++) {
    if (i % exceptNum == 0) // exceptNum의 배수는 출력하지 않음.
        continue;
    document.write(i + " ");
}
```
