//
//  ComposeViewController.swift
//  NewMemo
//
//  Created by 김용재 on 2022/08/11.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        
        guard let memo = memoTextView.text, memo.count > 0 else {
            alert(message: "메모를 입력하세요")
            return
        }
        
//        let newMemo = Memo(content: memo)
//        Memo.dummyMemoList.append(newMemo)
        
        NotificationCenter.default.post(name: ComposeViewController.newMemoDidInsert, object: nil)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var memoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

    }
}

// 노티피케이션
extension ComposeViewController {
    static let newMemoDidInsert = Notification.Name(rawValue: "newMemoDidInsert")
}
