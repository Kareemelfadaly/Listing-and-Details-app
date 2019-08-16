//
//  DetailsViewController.swift
//  Listing and Details Task
//
//  Created by Kareem Elfadaly on 7/31/19.
//  Copyright © 2019 kareemelfadaly. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var data:personData?
    
    @IBOutlet weak var profileDetail: UIImageView!
    @IBOutlet weak var fisrtNamelabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var bioDetailsLabel: UILabel!
    @IBOutlet weak var mobileNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var changeNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertProfileImageToCircular()
        mappingDataModelToTheView()
        
    }
    @IBAction func didPressTwitterButton(_ sender: Any) {
        if let url = URL(string: "\(data?.twitterAcc! ?? "" )") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func convertProfileImageToCircular() {
        profileDetail.layer.borderWidth = 1.5
        profileDetail.layer.masksToBounds = false
        profileDetail.layer.borderColor = UIColor.white.cgColor
        profileDetail.layer.cornerRadius = profileDetail.frame.height/2
        profileDetail.clipsToBounds = true
    }
    
    func mappingDataModelToTheView() {
        
        fisrtNamelabel.text = data?.firstName
        lastNameLabel.text = data?.lastName
        bioDetailsLabel.text = data?.bio
        mobileNumberLabel.text = data?.number
        emailLabel.text = data?.email
        twitterButton.setTitle("\( data?.twitterAcc!.dropFirst(20) ?? "" )", for: .normal)
        profileDetail.image = UIImage(named: data?.image ?? "") ?? UIImage(named: "Default")

    }
    
    @IBAction func ChangeName(_ sender: Any) {
        
    }
    
}
