//
//  ViewController.swift
//  PickerView03
//
//  Created by dit03 on 2019. 4. 18..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var myColor = ["Red", "Green", "Blue"]
    var myEmotion = ["hot", "calm", "beach", "sky"]
    
    
    @IBOutlet weak var lbPick: UILabel!
    
    @IBOutlet weak var Picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Picker.dataSource = self
        Picker.delegate = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if component == 0 {
//            return myColor.count
//        } else {
//            return myEmotion.count
//        }
        return component == 0 ? myColor.count : myEmotion.count
    }
    
    //UIPickerViewDelegate method
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if component == 0 {
//            return myColor[row]
//        } else {
//            return myEmotion[row]
//        }
        return component == 0 ? myColor[row] : myEmotion[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        if component == 0 {
//            lbPick.text = myColor[row]
//        }
//        else {
//            lbPick.text = myEmotion[row]
//        }
        
        lbPick.text = component == 0 ? myColor[row] : myEmotion[row]
        
        //lbPick.text = String(row) 몇 번째인지만 나옴
    }
    
//    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
//        return 100.0
//    } 칸 높이 늘림

}

