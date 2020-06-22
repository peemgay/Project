//
//  MainViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 21/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var imgHotel: UIImageView!
    @IBOutlet weak var infoLBL: UILabel!
    @IBOutlet weak var priceLBL: UILabel!
    @IBOutlet weak var locationLBL: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var tab01: UIView!
    @IBOutlet weak var tab02: UIView!
    @IBOutlet weak var tab03: UIView!
    
    @IBOutlet weak var tab1: UIView!
    @IBOutlet weak var tab2: UIView!
    @IBOutlet weak var tab3: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
   /* @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!*/
    
    @IBAction func stepper1(_ sender: UIStepper)
    {
        label1.text = String(sender.value)
    }
    @IBAction func stepper2(_ sender: UIStepper)
    {
        label2.text = String(sender.value)
    }
    @IBAction func stepper3(_ sender: UIStepper)
    {
        label3.text = String(sender.value)
    }
    
    private var datePicker: UIDatePicker?
    
    var image = UIImage()
    var name = ""
    var price = ""
    var location = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tab01.layer.cornerRadius = 15
        tab01.clipsToBounds = true
        tab01.layer.shadowRadius = 10
        tab01.layer.shadowOpacity = 1.0
        tab01.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab01.layer.shadowColor = UIColor.green.cgColor
        
        tab02.layer.cornerRadius = 15
        tab02.clipsToBounds = true
        tab02.layer.shadowRadius = 10
        tab02.layer.shadowOpacity = 1.0
        tab02.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab02.layer.shadowColor = UIColor.green.cgColor
        
        tab03.layer.cornerRadius = 15
        tab03.clipsToBounds = true
        tab03.layer.shadowRadius = 10
        tab03.layer.shadowOpacity = 1.0
        tab03.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab03.layer.shadowColor = UIColor.green.cgColor
        
        tab1.layer.cornerRadius = 15
        tab1.clipsToBounds = true
        tab1.layer.shadowRadius = 10
        tab1.layer.shadowOpacity = 1.0
        tab1.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab1.layer.shadowColor = UIColor.green.cgColor
        
        tab2.layer.cornerRadius = 15
        tab2.clipsToBounds = true
        tab2.layer.shadowRadius = 10
        tab2.layer.shadowOpacity = 1.0
        tab2.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab2.layer.shadowColor = UIColor.green.cgColor
        
        tab3.layer.cornerRadius = 15
        tab3.clipsToBounds = true
        tab3.layer.shadowRadius = 10
        tab3.layer.shadowOpacity = 1.0
        tab3.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab3.layer.shadowColor = UIColor.green.cgColor
        
        inputTextField.layer.cornerRadius = 20
        inputTextField.clipsToBounds = true
        inputTextField.layer.shadowRadius = 10
        inputTextField.layer.shadowOpacity = 1.0
        inputTextField.layer.shadowOffset = CGSize(width: 3, height: 3)
        inputTextField.layer.shadowColor = UIColor.green.cgColor
        
        /*img1.image = UIImage(named: "d2979ee4513bbabae7e98cc7b3d190d1e8b017b6")
        img2.image = UIImage(named: "ROOMS-Superior-King_1920x10802-370x276")
        img3.image = UIImage(named: "d2979ee4513bbabae7e98cc7b3d190d1e8b017b6")*/
        
        infoLBL.text = "\(name)"
        imgHotel.image = image
        priceLBL.text = "\(price)"
        locationLBL.text = "\(location)"
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        inputTextField.inputView = datePicker

        
    }
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy"
    inputTextField.text = dateFormatter.string(from: datePicker.date)
    view.endEditing(true)
    }
    

   

}
