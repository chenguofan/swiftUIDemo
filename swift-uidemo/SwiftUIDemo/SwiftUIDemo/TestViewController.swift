//
//  TestViewController.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/9.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 40))
        label.font = UIFont .systemFont(ofSize: 20);
        label.textAlignment = .left;
        label.textColor = UIColor.red
        label.text = "hello world";
        self.view.addSubview(label)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
