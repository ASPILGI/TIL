# 리액트 컴포넌트(Component)

### 컴포넌트(Component)란?
- 리액트로 만들어진 앱을 이루는 최소한의 단위
- 컴포넌트는 데이터(props)를 입력받아 View(state) 상태에 따라 DOM Node를 출력하는 함수.
- 컴포넌트 이름은 항상 대문자로 시작하도록 한다. 
- 기존의 웹 프레임워크는 MVC방식으로 분리하여 관리하여 각 요소의 의존성이 높아 재활용이 어렵다는 단점이 있었다.<br>
  반면 컴포넌트는 MVC의 뷰를 독립적으로 구성하여 재사용을 할 수 있고 이를 통해 새로운 컴포넌트를 쉽게 만들 수 있다.
  
  
#### 컴포넌트의 종류
리액트에서 정의하는 컴포넌트 종류는 크게 함수형 컴포넌트, 클래스형 컴포넌트 2가지가 있다.

1. 함수형 컴포넌트 (Stateless Functional Component)
- 가장 간단하게 컴포넌트를 정의하는 방법은 자바스크립트 함수를 작성하는 것이다.

[예시]

```
import React from 'react';
function MyComponent(props) {
	return <div>Hello, {props.name}</div>;
}
export default MyComponent; //다른 JS파일에서 불러올 수 있도록 내보내주기
```

2. 클래스형 컴포넌트 ( Class Component )
- 컴포넌트 구성 요소, 리액트 생명주기를 모두 포함하고 있다
- 프로퍼티, state, 생명주기 함수가 필요한 구조의 컴포넌트를 만들 때 사용한다.

[예시]

```
import React from 'react';
class MyComponent extends React.Component {
	constructor(props) { // 생성함수
		super(props);
	}
	componentDidMount() { // 상속받은 생명주기 함수
	}
	render() { // 상속받은 화면 출력 함수, 클래스형 컴포넌트는 render() 필수
		return <div>Hello, {this.props.name}</div>;
	}
}
export default MyComponent; //다른 JS파일에서 불러올 수 있도록 내보내주기
```

함수형 컴포넌트가 더 사용하기 쉬워서 이에 주로 함수형 컴포넌트를 사용하지만, 함수형 컴포넌트로 하지 못하는 작업을 처리할 때가 있는데 이때<br> 클래스형 컴포넌트를 활용한다

### props의 개념
 - 프로퍼티, props(properties의 줄임말) 라고 한다.
 - 상위 컴포넌트가 하위 컴포넌트에 값을 전달할때 사용한다.(단방향 데이터 흐름 갖는다.)
 - 프로퍼티는 수정할 수 없다는 특징이 있다.(자식입장에선 읽기 전용인 데이터이다.)
