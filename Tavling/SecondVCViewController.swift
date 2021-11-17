//
//  SecondVCViewController.swift
//  Tavling
//
//  Created by Nureddin Elmas on 2021-11-16.
//

import UIKit

class SecondVCViewController: UIViewController {

    var myRandom = ""
    @IBOutlet weak var myLabelSecond: UILabel!
    
    @IBOutlet weak var imageViewSecondVC: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabelSecond.text = myRandom
        
        switch Int(myRandom){
        case 1:  imageViewSecondVC.image = UIImage.init(named: "sevgi")
        case 2: imageViewSecondVC.image = UIImage.init(named: "papatya")
        case 3:imageViewSecondVC.image = UIImage.init(named: "papatya2")
        default:imageViewSecondVC.image = UIImage.init(named: "")
        }
    }

}
