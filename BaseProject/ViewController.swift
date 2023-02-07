//
//  ViewController.swift
//  BaseProject
//
//  Created by Musa KIRKKESELİ on 6.02.2023.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var myLabel: UILabel!
    
    
//    lazy var gradient: CAGradientLayer = {
//        let gradient = CAGradientLayer()
//        gradient.type = .axial
//        gradient.colors = [
//            UIColor.red.cgColor,
//            UIColor.purple.cgColor,
//            UIColor.cyan.cgColor
//        ]
//        gradient.locations = [0, 0.25, 1]
//        return gradient
//    }()
    
    let colorTop = UIColor.white.cgColor
    let colorBottom = UIColor(red: 0.941 , green: 0.818, blue: .zero, alpha: 1.0).cgColor
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        gradient.frame = self.view.bounds
//        self.view.layer.addSublayer(gradient)
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.red.cgColor,
                                UIColor.purple.cgColor,
                                UIColor.cyan.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        myLabel.text = "İstanbul'u dinliyorum, gözlerim kapalı"
    }
    
    @IBAction func onTap(_ sender: Any) {
        if myLabel.text == "İstanbul'u dinliyorum, gözlerim kapalı"{
            myLabel.text = "Ne güzel İstanbul be!"
        }else{
            myLabel.text = "İstanbul'u dinliyorum, gözlerim kapalı"
        }
    }
    
    }
    


