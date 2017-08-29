//
//  SecondVC.swift
//  GroupChallenge1
//
//  Created by Jonathan Go on 2017/08/29.
//  Copyright © 2017 Appdelight. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var grayBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    @IBOutlet weak var defaultBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.4673851704, green: 0.3750494015, blue: 1, alpha: 1)
        resetButtons()
        defaultBtn.isSelected = true
        defaultBtn.isEnabled = false
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
        if sender.currentTitle == "Gray" {
            resetButtons()
            changeColor(forColor: #colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1))
            highlighted(sender: sender)
        } else if sender.currentTitle == "Green" {
            resetButtons()
            changeColor(forColor: #colorLiteral(red: 0, green: 0.537254902, blue: 0.1529411765, alpha: 1))
            highlighted(sender: sender)
        } else if sender.currentTitle == "Orange" {
            resetButtons()
            changeColor(forColor: #colorLiteral(red: 1, green: 0.6, blue: 0.1294117647, alpha: 1))
            highlighted(sender: sender)
        } else if sender.currentTitle == "Default" {
            resetButtons()
            changeColor(forColor: #colorLiteral(red: 0.4673851704, green: 0.3750494015, blue: 1, alpha: 1))
            highlighted(sender: sender)
        }
        
//        switch sender.tag {
//        case 1:
//            resetButtons()
//            changeColor(forColor: #colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1))
//            highlighted(sender: sender)
//        case 2:
//            resetButtons()
//            changeColor(forColor: #colorLiteral(red: 0, green: 0.537254902, blue: 0.1529411765, alpha: 1))
//            highlighted(sender: sender)
//        case 3:
//            resetButtons()
//            changeColor(forColor: #colorLiteral(red: 1, green: 0.6, blue: 0.1294117647, alpha: 1))
//            highlighted(sender: sender)
//        case 4:
//            resetButtons()
//            changeColor(forColor: #colorLiteral(red: 0.4673851704, green: 0.3750494015, blue: 1, alpha: 1))
//            highlighted(sender: sender)
//        default:
//            break
//        }
    }
    
    func changeColor(forColor color: UIColor) {
        UIView.animate(withDuration: 0.4) {
            self.view.backgroundColor = color
        }
    }
    
    func resetButtons() {
        grayBtn.isSelected = false
        greenBtn.isSelected = false
        orangeBtn.isSelected = false
        defaultBtn.isSelected = false
        
        grayBtn.isEnabled = true
        greenBtn.isEnabled = true
        orangeBtn.isEnabled = true
        defaultBtn.isEnabled = true
    }
    
    func highlighted(sender: UIButton) {
        sender.isSelected = true
        sender.isEnabled = false
    }
}
