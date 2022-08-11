//
//  UIVIewController+Alert.swift
//  NewMemo
//
//  Created by 김용재 on 2022/08/11.
//

import UIKit

extension UIViewController {
    func alert(title: String = "알림", message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // 버튼 생성
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        // 버튼을 controller에 추가하기
        alert.addAction(okAction)
        
        // 화면에 표시하기
        present(alert, animated: true, completion: nil)
    }
}
