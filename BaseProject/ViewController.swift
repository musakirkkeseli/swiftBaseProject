//
//  ViewController.swift
//  BaseProject
//
//  Created by Musa KIRKKESELİ on 6.02.2023.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    let istanbulPhoto1 = UIImage(named: "istanbul.jpeg")
    let istanbulPhoto2 = UIImage(named: "istanbul_kiz_kulesi.jpeg")
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.red.cgColor,
                                UIColor.purple.cgColor,
                                UIColor.cyan.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        myImageView.image = istanbulPhoto1
        myLabel.text = "İstanbul'u dinliyorum, gözlerim kapalı"
    }
    
    @IBAction func onTap(_ sender: Any) {
        if myLabel.text == "İstanbul'u dinliyorum, gözlerim kapalı"{
            myLabel.text = "Ne güzel İstanbul be!"
            myImageView.image = istanbulPhoto2
        }else{
            myLabel.text = "İstanbul'u dinliyorum, gözlerim kapalı"
            myImageView.image = istanbulPhoto1
        }
    }
    
    }
    


