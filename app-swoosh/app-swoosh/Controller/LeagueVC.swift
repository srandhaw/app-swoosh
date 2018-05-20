//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Sehajbir Randhawa on 5/20/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var user: User = User()
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnPressed(_ sender: BorderButton) {
        if(sender.titleLabel?.text == "Mens"){
            user.league="Mens"
        }
        else if(sender.titleLabel?.text=="Womens"){
            user.league="Womens"
        }
        else if(sender.titleLabel?.text=="Co-ed"){
            user.league="Co-ed"
        }
        nextBtn.isEnabled=true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.user=user
        }
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func unWindSkillVC(x: UIStoryboardSegue)  {
        
    }

   
}
