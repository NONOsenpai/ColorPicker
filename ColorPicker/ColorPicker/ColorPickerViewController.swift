//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Chuyang Lin on 7/12/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var ColorNameLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    var pickercolors = [Color(name: "red",    UIcolor:    UIColor.red),
                  Color(name: "orange", UIcolor: UIColor.orange),
                  Color(name: "yellow", UIcolor: UIColor.yellow),
                  Color(name: "green",  UIcolor:  UIColor.green),
                  Color(name: "blue",   UIcolor:   UIColor.blue),
                  Color(name: "purple", UIcolor: UIColor.purple),
                  Color(name: "brown",  UIcolor:  UIColor.brown)]
    
    var color: Color?
    
    var index = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickercolors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        ColorNameLabel.text=pickercolors[row].name
        
        self.title=pickercolors[row].name
        index=index+1
        return pickercolors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ColorNameLabel.text=pickercolors[row].name
        self.view.backgroundColor=pickercolors[row].UIcolor
        index=index+1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate=self
        self.picker.dataSource = self
        if (index==0)
        {
            self.view.backgroundColor=UIColor.red
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
