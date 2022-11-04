# 리덕스(Redux)란?

### Redux의 개념
 - Redux(리덕스)란 JavaScript(자바스트립트) 상태관리 라이브러리이다.


#### Redux의 원칙
1. Single source of truth
 - 동일한 데이터는 항상 같은 곳에서 가지고 온다
 - 즉, 스토어라는 하나뿐인 데이터 공간이 있다는 의미이다.

2. State is read-only
 - 리액트에서는 setState 메소드를 활용해야만 상태 변경이 가능하다.
 - 리덕스에서도 액션이라는 객체를 통해서만 상태를 변경할 수 있다.

3. Changes are made with pure functions
 - 변경은 순수함수로만 가능하다.
 - 리듀서와 연관되는 개념이다.
 - Store(스토어) – Action(액션) – Reducer(리듀서)

#### Store, Action, Reducer의 의미와 특징
<img src="https://user-images.githubusercontent.com/84302546/199869348-cc5f97bd-b35e-4ad7-9639-cf417fc21f16.png" width="500" height="300">
