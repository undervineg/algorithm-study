import Foundation

func reverseString(_ str: String) -> String {
    return str.reversed().reduce("") { $0 + String($1) }
}

print(reverseString("abcde"))

func reverseString2(_ str: String) -> String {
    var result = ""
    // swift에는 스택이 따로 없으므로, 첫 인덱스에 문자를 삽입하는 방식으로 대체
    for char in str {
        result.insert(char, at: str.startIndex)
    }
    return result
}

print(reverseString2("abcde"))
