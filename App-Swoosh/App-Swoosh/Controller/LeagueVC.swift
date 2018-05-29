//
//  LeagueVC.swift
//  App-Swoosh
//
//  Created by Hassan Ashraf on 5/29/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func unwindFromLeagueVC(unwindSegue : UIStoryboardSegue) {
        
    }
    
    @IBAction func menBtnPressed(_ sender: Any) {
        selectLeague(leagueType: "Men")
    }
    
    @IBAction func womenBtnPressed(_ sender: Any) {
        selectLeague(leagueType: "Women")
    }
    
    @IBAction func coedBtnPressed(_ sender: Any) {
        selectLeague(leagueType: "Co-ed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
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
