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

### Store, Action, Reducer의 의미와 특징
<img src="https://user-images.githubusercontent.com/84302546/199869348-cc5f97bd-b35e-4ad7-9639-cf417fc21f16.png" width="500" height="300">


#### Store(스토어)
 - Store(스토어)는 상태가 관리되는 오직 하나의 공간이다.
 - 컴포넌트와는 별개로 스토어라는 공간이 있어서 그 스토어 안에 앱에서 필요한 상태를 담는다.
 - 컴포넌트에서 상태 정보가 필요할 때 스토어에 접근한다.

#### Action(액션)
 - Action은 앱에서 스토어에 운반할 데이터를 말한다. (주문서)
 - Action은 자바스크립트 객체 형식으로 되어있다.

#### Reducer(리듀서)
 - Action을 Store에 바로 전달하는 것이 아니라 Reducer에 전달해야 한다.
 - Reducer가 주문을 보고 Store의 상태를 업데이트 하는 것이다.
 - Action을 Reducer에 전달하기 위해서는 dispatch() 메소드를 사용해야한다.

### Redux의 장점
 - 상태를 예측 가능하게 만든다. (순수함수를 사용하기 때문)
 - 유지보수 (복잡한 상태 관리와 비교)
 - 디버깅에 유리 (action과 state log 기록 시) → redux dev tool (크롬 확장)
 - 테스트를 붙이기 용의 (순수함수를 사용하기 때문)
