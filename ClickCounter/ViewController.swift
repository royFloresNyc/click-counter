//
//  ViewController.swift
//  ClickCounter
//
//  Created by Roy Flores on 12/28/21.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label

        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)

        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
    }

    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
}
