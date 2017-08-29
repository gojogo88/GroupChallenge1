//
//  SecondVC.swift
//  GroupChallenge1
//
//  Created by Jonathan Go on 2017/08/29.
//  Copyright © 2017 Appdelight. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.4673851704, green: 0.3750494015, blue: 1, alpha: 1)
    }
    
//    @IBAction func grayBtnPressed(_ sender: UIButton) {
//        changeColor(forColor: #colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1))
//
//    }
//    
//    @IBAction func greenBtnPressed(_ sender: UIButton) {
//        changeColor(forColor: #colorLiteral(red: 0, green: 0.537254902, blue: 0.1529411765, alpha: 1))
//    }
//    
//    @IBAction func orangeBtnPressed(_ sender: UIButton) {
//        changeColor(forColor: #colorLiteral(red: 1, green: 0.6, blue: 0.1294117647, alpha: 1))
//    }
//    
//    @IBAction func defaultPressed(_ sender: UIButton) {
//        changeColor(forColor: #colorLiteral(red: 0.4673851704, green: 0.3750494015, blue: 1, alpha: 1))
//    }
    
    
    @IBAction func buttonClicked(sender: UIButton) {
        switch sender.tag {
        case 1:
            changeColor(forColor: #colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1))
        case 2:
            changeColor(forColor: #colorLiteral(red: 0, green: 0.537254902, blue: 0.1529411765, alpha: 1))
        case 3:
            changeColor(forColor: #colorLiteral(red: 1, green: 0.6, blue: 0.1294117647, alpha: 1))
        case 4:
            changeColor(forColor: #colorLiteral(red: 0.4673851704, green: 0.3750494015, blue: 1, alpha: 1))
        default:
            break
        }
    }
    
    func changeColor(forColor color: UIColor) {
        UIView.animate(withDuration: 0.4) {
            self.view.backgroundColor = color
        }
    }
    
//    func highlightTitle(sender: UIButton) {
//        colorSelected = !colorSelected
//
//        if colorSelected {
//            sender.setTitleColor(UIColor.black, for: UIControlState.normal)
//            sender.isEnabled = false
//        } else {
//            sender.setTitleColor(UIColor.red, for: UIControlState.normal)
//            sender.isEnabled = true
//        }
//    }
    
}
