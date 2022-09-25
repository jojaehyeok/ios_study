//
//  ViewController.swift
//  aotolayout
//
//  Created by 조재혁 on 2022/09/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapChangeColorButton(_ sender: UIButton) {
        self.colerView.backgroundColor = UIColor.blue;
        print("색상 변경 버튼을 눌렀습니다.")
    }
}

