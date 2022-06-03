# JVM의 구조와 동작과정

### JVM란?
- (Java Virtual Machine)의 줄임말이며 직역하면 '자바를 실행하기 위한 가상 기계(컴퓨터)'라고 할 수 있다.
- 자바 컴파일러(javac)에 의해 컴파일된 .class파일(바이트 코드)을 특정 OS에 맞게 해석해 기계어로 변환해 주는 역할을 수행한다.

### JVM의 장,단점
> 장점
- 코드 호환성이 좋다
  - 자바 바이트 코드는 한번 작성되면 여러 플랫폼에서 실행이 가능합니다. 
  - 자바 바이트코드는 jvm 위에서 실행되므로 특정 하드웨어에 종속되지 않습니다.

> 단점
- 실행 속도가 느리다
  - 소스 코드에서 바이트 코드로 변환한 다음 바이트 코드에서 실행 가능한 코드로 변환해야 하므로,<br> 다른 언어에 비해 프로그램 실행속도가 떨어집니다.

### JVM의 구조
- JVM의 구성을 살펴보면 크게 4가지 (Class Loader, Runtime Data Area,  Garbage Collector, Execution Engine)로 나뉜다.

#### 1. Class Loader
- JVM 내로 클래스 파일을 로드하고, 링크를 통해 배치하는 작업을 수행하는 모듈이다
- 런타임 시에 동적으로 클래스를 로드한다
#### 2. Runtime Data Area
- JVM의 메모리 영역으로 자바 애플리케이션을 사용할 때 사용되는 데이터들을 적재하는 영역이다
- 크게 Method Area, Heap Area, Stack Area, PC Register, Native Method Stack 으로 나눌 수 있다
  - Method area<br> 
    모든 쓰레드가 공유하는 메모리 영역입니다.<br>
    메소드 영역은 클래스, 인터페이스, 메소드, 필드, Static 변수 등의 바이트 코드를 보관합니다.
#### 3. Garbage Collector
- Heap 메모리 영역에 생성(적재)된 객체들 중 참조되지 않는 객체들을 탐색 후 제거하는 역할을 한다.
- GC가 역할을 하는 시간은 정확히 언제인지를 알 수 없다, 즉 참조가 없어지자마자 해제되는 것을 보장하지 않는다는 말이다.
#### 4. Execution Engine
- Class Loader에 의해 메모리에 적재된(바이트 코드)들을 기계어로 변경해 명령어 단위로 실행하는 역할을 한다
- 인터프리터(Interpreter) 방식과, JIT(Just In Time) 컴파일러를 이용하는 방식이 있는데,<br> 인터프리터 방식을 사용하다가 일정한 기준이 넘어가면 JIT 컴파일러 방식으로 실행하게 된다


##  과정
1. 개발자가 .java 파일을 생성한다.
2. build를 한다.
3. java compiler의 javac의 명령어를 통해 바이트코드(.class)를 생성한다.
4. Class Loader를 통해 JVM 메모리 내로 로드한다.
5. 실행엔진을 통해 컴퓨터가 읽을 수 있는 기계어로 해석된다.(각 운영체제에 맞는 기계어)
<img width="50%" src="https://user-images.githubusercontent.com/84302546/171850167-0ef770d8-e96e-4d6d-8e0d-c4f9470e807f.png"/>
