//
//  personData.swift
//  Listing and Details Task
//
//  Created by Kareem Elfadaly on 7/31/19.
//  Copyright © 2019 kareemelfadaly. All rights reserved.
//

import Foundation

class personData {
    var firstName : String?
    var lastName : String?
    var number : String?
    var bio : String?
    var email : String?
    var twitterAcc : String?
    var image : String?

    init(fisrtName: String, lastName:String, number:String, bio:String, email:String, twitterAcc:String, image:String) {
        
        self.firstName = fisrtName
        self.lastName = lastName
        self.number = number
        self.bio = bio
        self.email = email
        self.twitterAcc = twitterAcc
        self.image = image
    }
}
