# 에러와 예외의 차이는 무엇인가?

#### 에러[Error]란?
- 메모리 부족, 스택오버플로우와 같이 발생하게 되면 복구할 수 없는 심각한 오류
- 하드웨어의 잘못된 동작이나 고장으로 발생한 오류

#### 예외[Exception] 
- 사용자의 잘못된 조작 또는 개발자의 잘못된 코딩으로 발생하는 프로그램 오류<br>
-> 그래서 개발할 때 테스트를 하는 것이 중요! 예외 처리는 최대한 개발 당시에 해 둬야 한다.

### 예외의 종류
1. 일반예외(Exception)
 - 자바 소스를 컴파일하는 과정에서 예외 처리 코드가 필요한지 검사한다.
 - ClassNotFoundException과 InterruptedException 등이 속한다.
2. 실행예외(Runtime Exception)
 - 컴파일 과정에서 예외 처리 코드를 검사하지 않는 예외
 - NullPointerException과 ArrayIndexOutOfBoundsException 등이 속한다.
