import Foundation

// 문자의 아스키 코드를 반환.
extension Character {
    var ascii: Int {
        let s = String(self).unicodeScalars
        return Int(s.first!.value)
    }
}

// 문자열의 모든 글자가 유일한지 확인.
func isUniqChars(_ str: String) -> Bool {
    // (*ASCII 코드 기준) 문자열 개수가 256자를 초과하면 중복되는 글자가 있음.
    guard str.count <= 256 else { return false }
    // 해시테이블 생성. 초기값은 모두 false.
    var hashTable = [Bool](repeating: false, count: 256)
    // 모든 문자를 돌면서
    for char in str {
        // 기존에 값이 있는 경우, 함수 종료 및 false 반환.
        if hashTable[char.ascii] {
            return false
        } else {
            // 기존 값이 없는 경우, 테이블에 true 삽입.
            hashTable[char.ascii] = true
        }
    }
    // 함수가 종료되지 않고 for문을 나온 경우, 중복되는 글자 없음. true 반환.
    return true
}

isUniqChars("abcde")   // true
isUniqChars("abcdea")  // false
