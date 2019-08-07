//
//  ViewController.swift
//  Listing and Details Task
//
//  Created by Kareem Elfadaly on 7/31/19.
//  Copyright © 2019 kareemelfadaly. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var finalData:[personData] = []

 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalData = getData()
        
        
    }
    
    
    func getData() -> [personData] {
        var data : [personData] = []
        
        let kareem = personData(fisrtName: "Kareem ", lastName: "Elfadaly", number: "01128232739", bio: "ka2en ya3esh w yat3ayash .", email: "kareemelfadaly@gmail.com", twitterAcc: "https://twitter.com/KareemElfadaly", image: "1")
        
         let Ahmed = personData(fisrtName: "Ahmed ", lastName: "Saleh", number: "01276598364", bio: "perfect person with a complicated mind .", email: "ahmedsaleh@gmail.com", twitterAcc: "https://twitter.com/AhmedSaleh", image: "2")
        
        let Sara = personData(fisrtName: "Sara ", lastName: "Ahmed", number: "01234686574", bio: "شخصية عندية بتحب  الشوكولاتة مثلا اي حاجه هاها 😅 وعايشه برا مصر . ", email: "saraahmed@gmail.com", twitterAcc: "https://twitter.com/SaraAhmed", image: "3")
        
        let Hassan = personData(fisrtName: "Hassan ", lastName: "Samy", number: "01031235435", bio: "Numerous methodologies have been developed over the years to meet the demands of these fields, such as Enzyme-Linked Immunosorbent Assays (ELISA) .", email: "hassansamy@gmail.com", twitterAcc: "https://twitter.com/HassanSamy", image: "4")
        
         let Gamal = personData(fisrtName: "Gamal ", lastName: "Salah", number: "01594222389", bio: "Other approaches for studying biochemical systems have used various types of dielectric measurements to characterize certain classes of biological systems such as tissue samples and cellular systems. In the 1950's, experiments were conducted to measure the dielectric properties of biological tissues using standard techniques for the measurement of dielectric properties of materials known at the time. Since then various approaches to carrying out these measurements have included frequency domain measurements, and time domain techniques such as Time Domain Dielectric Spectroscopy. In these approaches, the experiments were commonly carried out using various types of coaxial transmission lines, or other transmission lines and structures of typical use in dielectric characterization of materials. This included studies to look at the use and relevance of the dielectric properties of a broad range of biological systems: The interest has ranged from whole tissue samples taken from various organs of mammalian species .", email: "gamalsalah@gmail.com", twitterAcc: "https://twitter.com/GamalSalah", image: "5")
        
         let Khaled = personData(fisrtName: "Khaled ", lastName: "Omar", number: "01134453598", bio: "No body here 🤓 .", email: "khaledomar@gmail.com", twitterAcc: "https://twitter.com/KhaledOmar", image: "ghdf")
        
        let Mohamed = personData(fisrtName: "Mohamed ", lastName: "azam", number: "01038352064", bio: "Numerous methodologies have been developed over the years to meet the demands of these fields, such as Enzyme-Linked Immunosorbent Assays (ELISA) .", email: "mohamedazam@gmail.com", twitterAcc: "https://twitter.com/MohamedAzam", image: "sdthrhb")
        
        data = [kareem,Ahmed,Sara,Hassan,Gamal,Khaled,Mohamed]
        return data
    }
    
    
}

extension ViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finalData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell" , for: indexPath) as! personDataTableViewCell
        
        cell.nameLabel.text = finalData[indexPath.row].firstName
        cell.nameLabel.text?.append(finalData[indexPath.row].lastName!)
        cell.bioLabel.text = finalData[indexPath.row].bio
        cell.numberLabel.text = finalData[indexPath.row].number
        cell.profileImageCell.image = UIImage(named: finalData[indexPath.row].image ?? "") ?? UIImage(named: "Default")
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let des = segue.destination as? DetailsViewController {
            if let indexPath = sender as? IndexPath {
                des.firstName = finalData[indexPath.row].firstName
                des.lastName = finalData[indexPath.row].lastName
                des.bio = finalData[indexPath.row].bio
                des.number = finalData[indexPath.row].number
                des.email = finalData[indexPath.row].email
                des.twitter = finalData[indexPath.row].twitterAcc
                des.image = finalData[indexPath.row].image
                
            }

        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToDetailsScreen", sender: indexPath)
    }
    
   
}

