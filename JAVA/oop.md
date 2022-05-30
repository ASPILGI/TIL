# 객체 지향 프로그래밍(Object Oriented Programming)

- 객체 지향 프로그래밍은 프로그래밍에서 필요한 데이터를 추상화시켜 상태와 행위를 가진 객체를 만들고<br>
  그 객체들 간의 유기적인 상호작용을 통해 로직을 구성하는 프로그래밍 방법입니다.
```
객체(object)란
- 간단히 이야기해서 실생활에서 우리가 인식할 수 있는 사물로 설명할 수 있다.
- 이러한 객체의 행동을 구체화하는 형태의 프로그래밍이 바로 객체 지향 프로그래밍이다.
```

## 객체 지향 프로그래밍의 장,단점
> 장점
- 코드 재사용이 용이
  - 남이 만든 클래스를 가져와서 이용할 수 있고 상속을 통해 확장해서 사용할 수 있다.
- 유지보수가 쉬움
  - 절차 지향 프로그래밍에서는 코드를 수정해야할 때 일일이 찾아 수정해야 하는 반면<br>
    객체 지향 프로그래밍에서는 수정해야 할 부분이 클래스 내부에 멤버변수 혹은 메서드로 존재하기 때문에 해당 부분만 수정하면 된다. 
- 대형 프로젝트에 적합
  - 클래스 단위로 모듈화시켜서 개발할 수 있으므로 업무 분담하기 쉽다.

> 단점
- 처리 속도가 상대적으로 느림
- 객체가 많으면 용량이 커질 수 있음
- 설계시 많은 시간과 노력이 필요함

## 객체 지향 프로그래밍 키워드 5가지
1. 클래스 + 인스턴스(객체)
2. 추상화
3. 캡슐화
4. 상속
5. 다형성

### 1. 클래스 + 인스턴스(객체)

- 클래스 : 객체를 만들어내기 위한 설계도 혹은 틀 이라고 할 수 있고, 객체를 생성하는데 사용합니다.
- 인스턴스(객체) : 클래스에서 정의한 것을 토대로 실제 메모리에 할당된 것으로 실제 프로그램에서 사용되는 데이터

### 2. 추상화
- 객체들의 "공통" 속성이나 기능을 묶어 이름을 붙이는 것이다.<br>예를 들어, 강아지나 고양이의 공통적인 부분을 묶어 pet이라는 이름을 붙이는 것

### 3. 캡슐화
- 캡슐화란 객체 지향 프로그래밍에서 기능과 특성의 모음을 "클래스"라는 "캡슐"에 분류해서 넣는 것입니다. 
```
캡슐화의 목적 2가지
1. 코드를 재수정 없이 재활용하는 것.
2. 접근 제어자를 통한 정보 은닉
```

### 4. 상속
- 상속은 부모 클래스의 속성과 기능을 그대로 이어받아 사용할 수 있게 하고 기능의 일부분을 변경해야 할 경우<br> 상속받은 자식 클래스에서 해당 기능만 다시 수정(정의)하여 사용할 수 있게 하는 것이다.
```
다중상속은 불가하다. 
(클래스의 상속 관계에서 혼란을 줄 수 있기 때문에 상속은 반드시 하나만 가능하고 필요에 따라 인터페이스를 사용할 수 있게 했다.)
```

### 5. 다형성
자바에서 다형성을 지원하는 방법으로 메소드 오버로딩(Overloading) 오버라이딩(Overriding)이 있다.

오버로딩(Overloading) : 같은 이름의 메소드를 여러 개 가지면서 매개변수의 유형과 개수가 다르도록 하는 기술

오버라이딩(Overriding) : 상위 클래스가 가지고 있는 메소드를 하위 클래스가 재정의 해서 한다.

**1. 오버로딩 (Overloading)**

같은 이름의 메서드 여러개를 매개변수 유형과 개수의 차이로 구별하는 것으로, 메서드 오버로딩과 생성자 오버로딩으로 나뉜다.

같은 이름의 메서드 또는 생성자를 여러개 정의하고, 매개변수의 자료형과 개수 등을 다르게 하여, 다양한 유형의 호출에 응답할 수 있게된다
```java
public class Overloadingtest {
	// test() 호출
    void test(){
        System.out.println("매개변수 없음");
    }

    // test에 매개변수로 int형 2개 호출
    void test(int z, int x){
        System.out.println("매개변수 "+ z + "와 " + x);
    }

    // test에 매개변수 double형 1개 호출
    void test(double d){
        System.out.println("매개변수 " + d);
    }
}
```
```java
public class test {
    public static void main(String[] args) {       
        // Overloadingtest 객체 생성
        Overloadingtest ob = new Overloadingtest();
       
        // test() 호출
        ob.test();
       
        // test(int z, int x) 호출
        ob.test(15, 40);
           
        // test(double d) 호출
        ob.test(223.5);
    }
}
```

**2. 오버라이딩 (Overriding)**

상위 클래스가 가지고 있는 메서드를 하위클래스가 재정의 하는 것

상위 클래스의 메서드와 메서드 이름, 매개변수, 반환형이 같을경우 이를 자동으로 오버라이딩으로 인식하여, 상위클래스의 메서드를 재정의한다. (덮어쓴다)

단, 매개변수의 이름은 달라도 상관없다.

```java
public class student{
   
    public String name;
    public int age;
   
    // print() 메소드
    public void print(){
        System.out.println("학생의 이름은 "+this.name+ "이고, 나이는" + this.age+"입니다.");
    }   
}


// Employee 상속
public class Manager extends Employee{
   
    String roleOfTeacher;
   
    // print() 메소드 오버라이딩
    public void print(){
        System.out.println("학생의 이름은 "+this.name + "이고, 나이는" + this.age + "입니다.");
        System.out.println("선생님 "+this.name+"은 "+this.roleOfTeacher+" 담당입니다.");
    }
}
```
```java
public class test {

    public static void main(String[] args) {
        
     // Manager 객체 생성
     Teacher lee = new Teacher();
     
     // 변수 설정   
     lee.name = "심봉사";
     lee.age = 40;
     lee.roleOfTeacher="부장선생님";
        
// Overriding된 Teacher객체의 print()호출
      lee.print();
    }
}
```

Student에 print() 함수를 선언하고, Teacher에서 Student를 상속하여 print() 메소드를 재정의 하였다.

main 함수에서 Teacher 객체를 생성 후, print() 메소드를 호출하면 오버라이딩된 Teacher 객체의 print() 메소드가 호출된다.
