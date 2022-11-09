# JSX

### JSX란?
쉽게 말해 HTML 문법을 JavaScript 코드 내부에 쓴 것. 그것이 바로 JSX다<br>
어렵게 말해 JavaScript eXtension -> JavaScript의 확장 버전이고 결론은 자바스크립트이다.

"React에서 HTML을 표현할 때, JSX를 사용한다. 외관상 HTML같은 마크업 언어를 리터럴로 입력하는 것으로 보이는데,<br>
빌드 시 Babel에 의해 자바스크립트로 변환된다. 자바스크립트 코드를 HTML처럼 표현할 수 있기 때문에 용이한 개발이 가능하다." (나무위키曰)
즉, JSX는 자바스크립트 안에서 HTML 문법을 사용해서 view를 구성할 수 있게 도와주는 자바스크립트 문법으로,<br> 리액트 개발에 엄청난 도움을 주고 있다.

### JSX 사용시 주의할 점
1. 속성은 항상 쌍따옴표로 감싼다.
 - 예를 들어, class를 주고 싶을 때 원래 속성명은 class이지만 JSX에서는 className을 사용해야 한다.
```
<li className="example">예제입니다.</li>
```

2. 태그는 항상 닫혀있어야 한다.
 - HTML에서 input이나 br을 사용할 때 태그를 닫지 않는 경우가 있다. 하지만 리액트에서는 반드시 클로징 태그를 써줘야 한다.

3. 어떤 태그라도 Self-closing tag가 가능하다.
```
<div></div> => <div /> 
```

4. 형제 노드를 작성할 수 없다.
 - 아래 처럼 div가 이어진 형태로는 작성할 수 없다
```
return (
  <div></div>
  <div></div>
);
```
 - 그래서 반드시 div나 Fragment태그로 감싸진 형태여야 한다.
```
return (
 <Fragment>
  <div></div>
  <div></div>
 </Fragment>
);
```

5. JSX 안에 자바스크립트 값은 다음과 같이 사용한다.
```
import React, { Fragment } from 'react';

return (
 <Fragment>
  <div>{name}</div>
  <div><phone}</div>
 </Fragment>
);
```
