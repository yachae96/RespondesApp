//
//  ViewController.swift
//  RespondesApp
//
//  Created by Yachae on 3/26/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
                                    // 델리게이트라는 자격증을 얻어야 한다.
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self // self는 뷰컨트롤러를 의미한다.
        
        setup()
    }
    
    func setup() {
        view.backgroundColor = UIColor.lightGray // 바탕화면을 회색으로만들기
        
        textField.keyboardType = UIKeyboardType.emailAddress
        // 키보드 팝업시 기본 키보드 설정
        textField.placeholder = "이메일 입력" // 텍스트박스 안에 기본 텍스트 설정
        textField.borderStyle = .roundedRect // 박스의 테두리를 둥글게
        textField.clearButtonMode = .always
        // 텍스트박스에 x버튼을 누르면 클리어되는 버튼을 생성
        textField.returnKeyType = .go
        // 키보드의 확인버튼을 go로 바꾸는 코드 여러가지로 바꿀 수 있다.
    }
        
    // 텍스트필드의 입력을 시작할때 호출 (시작할지 말지의 여부를 허락하는 것)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function) // 프린트가 될 때 함수의 이름이 출력
        return true
    }
    
    
    // 유저가 입력을 시작하면 아래가 출력된다. (입력을 시작하는 시점을 알 수 있는 메서드)
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 시작했다.")
    }
    
    // 텍스트를 입력하고 x를 누르면 텍스트가 사라지게 할지 말지
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드 글자 내용이 (한글자 한글자) 입력되거나 지워질 때 호출이 되고
    // 입력이 되게 허락할지 말지를 정한다.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(#function)
        print(string) // 파라미터를 출력
        return true
    }
    
    // 텍스트필드의 엔터키가 눌러지면 다음 동작을 허락할것인지 말것인지
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        
        if textField.text == "" { // 텍스트필드가 빈문자열이면
            textField.placeholder = "Type Something!" // 플레이스홀더에 문자열넣고 false을 리턴
            return false
        } else {
            return true
        }
        
      
    }
    
    // 텍스트필드의 입력이 끝날때 호출 (끝날지 말지를 허락)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드의 입력이 실제 끝났을때 호출 (끝나는 시점을 캐치하기 위해)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 입력을 끝냈다.")
    }
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
    }
    
}

