//
//  ViewController.swift
//  RespondesApp
//
//  Created by Yachae on 3/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        view.backgroundColor = UIColor.gray // 바탕화면을 회색으로만들기
        
        textField.keyboardType = UIKeyboardType.emailAddress
        // 키보드 팝업시 기본 키보드 설정
        textField.placeholder = "이메일 입력" // 텍스트박스 안에 기본 텍스트 설정
        textField.borderStyle = .roundedRect // 박스의 테두리를 둥글게
        textField.clearButtonMode = .always
        // 텍스트박스에 x버튼을 누르면 클리어되는 버튼을 생성
        textField.returnKeyType = .go
        // 키보드의 확인버튼을 go로 바꾸는 코드 여러가지로 바꿀 수 있다.
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
    }
    
}

