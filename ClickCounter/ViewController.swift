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
    var backgroundColor = UIColor.cyan

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor

        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label

        //increment button
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 150, y: 250, width: 100, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)

        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)

        //decrement button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 350, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)

        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }

    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        toggleBackgroundColor()
    }

    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        toggleBackgroundColor()
    }

    func toggleBackgroundColor() {
        backgroundColor = backgroundColor == UIColor.cyan ? UIColor.magenta : UIColor.cyan
        view.backgroundColor = backgroundColor
    }
}
