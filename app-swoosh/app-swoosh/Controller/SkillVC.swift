//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Sehajbir Randhawa on 5/20/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var user: User!

    @IBOutlet weak var finishBtn: BorderButton!
    
    
    override func viewDidLoad() {
        finishBtn.isEnabled = false
        super.viewDidLoad()
        print("\(user.league!)")
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPressed(_ sender: BorderButton) {
        if(sender.titleLabel?.text=="Beginner"){
            if(user.league=="Co-ed"){
                finishBtn.setTitle("Good luck girl/guy!", for: .normal)
            }
            else if(user.league=="Mens"){
                finishBtn.setTitle("Good luck, man!", for: .normal)
            }
            else{
                finishBtn.setTitle("Good luck, girl!", for: .normal)
            }
        }
        else{
            if(user.league=="Co-ed"){
                finishBtn.setTitle("Good luck baller-girl/guy!", for: .normal)
            }
            else if(user.league=="Mens"){
                finishBtn.setTitle("Good luck, baller-man!", for: .normal)
            }
            else{
                finishBtn.setTitle("Good luck, baller-girl!", for: .normal)
            }
        }
        finishBtn.isEnabled=true
        
    }
    
    
    @IBAction func finishBtnPressed(_ sender: BorderButton) {
        performSegue(withIdentifier: "WelcomeVCSegue", sender: self)
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
