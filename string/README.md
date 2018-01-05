# 문자열 알고리즘
## 1-1. 문자열에 포함된 문자들이 전부 유일한가?
### 일반적인 생각: 문자를 전부 각각 비교한다.
#### 알고리즘
- for n(문자개수)
	- for n: [0] isEqual? [1]...[n-1]
	- for n: [1] isEqual? [2]...[n-1]
	- ...
	- for n: [n-2] isEqual? [n-1]

- 복잡도: **O(n^2)**

<br/>

### 개선된 생각: 해시를 활용한다.
#### 알고리즘
- 알파벳을 해시에 저장한 후 테이블에 접근한다.
- 아스키코드가 256개밖에 없다는 점을 활용

1. 문자열의 문자개수가 256개 이상이면 무조건 중복이 있으므로 False 반환
2. 해시 테이블 생성. 모든 기본값 False
3. 문자개수 256개 이하인 경우
	- 해당 글자가 테이블에 있는지 확인: 있으면 False 반환, 없으면 True로 값 변경 및 반환

- 복잡도: **O(n)**

**[코드 보러가기](https://github.com/undervineg/algorithm-study/blob/master/string/1.1_isUniqChars.playground/Contents.swift)**