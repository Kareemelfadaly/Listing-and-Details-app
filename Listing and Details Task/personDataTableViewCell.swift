//
//  personDataTableViewCell.swift
//  Listing and Details Task
//
//  Created by Kareem Elfadaly on 7/31/19.
//  Copyright © 2019 kareemelfadaly. All rights reserved.
//

import UIKit

class personDataTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var profileImageCell: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        convertProfileImageToCircular()
      //  self.layer.borderWidth = 0.5
      //  self.layer.borderColor = UIColor.black.cgColor
      //  self.layer.cornerRadius = 20
        
        
    }
    

    @IBAction func didPressCallButton(_ sender: Any) {
        if let url = URL(string: "tel://\(numberLabel.text!)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    func convertProfileImageToCircular() {
        profileImageCell.layer.borderWidth = 1
        profileImageCell.layer.masksToBounds = false
        profileImageCell.layer.borderColor = UIColor.black.cgColor
        profileImageCell.layer.cornerRadius = profileImageCell.frame.height/2
        profileImageCell.clipsToBounds = true
        
    }

}

