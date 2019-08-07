//
//  DetailsViewController.swift
//  Listing and Details Task
//
//  Created by Kareem Elfadaly on 7/31/19.
//  Copyright © 2019 kareemelfadaly. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var firstName : String?
    var lastName : String?
    var number : String?
    var email : String?
    var twitter : String?
    var bio : String?
    var image : String?
    
    @IBOutlet weak var profileDetail: UIImageView!
    @IBOutlet weak var fisrtNamelabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var bioDetailsLabel: UILabel!
    @IBOutlet weak var mobileNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var twitterButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertProfileImageToCircular()
        mappingDataModelToTheView()
        mapCorrectprofileImage()
    
    }
    
    @IBAction func didPressTwitterButton(_ sender: Any) {
        if let url = URL(string: "\(twitter!)") {
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
        fisrtNamelabel.text = firstName
        lastNameLabel.text = lastName
        bioDetailsLabel.text = bio
        mobileNumberLabel.text = number
        emailLabel.text = email
        //  print(twitter!.dropFirst(20))
        twitterButton.setTitle("\(twitter!.dropFirst(20))", for: .normal)
        
    }
    
    func mapCorrectprofileImage() {
        profileDetail.image = UIImage(named: image ?? "") ?? UIImage(named: "Default")

    }
    
    
}
