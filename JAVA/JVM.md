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
#### 2. Runtime Data Area
#### 3. Garbage Collector
#### 4. Execution Engine
