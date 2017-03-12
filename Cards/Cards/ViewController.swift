//
//  ViewController.swift
//  Cards
//
//  Created by Bharat chowdary Kolla on 2/9/16.
//  Copyright © 2016 Bharat chowdary Kolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstCardimageview: UIImageView!
    @IBOutlet weak var SecondCardimageview: UIImageView!
    @IBOutlet weak var PlayRoundButton: UIButton!
    @IBOutlet weak var BackGroundimageview: UIImageView!
    
    @IBOutlet weak var PlayerScoreLable: UILabel!
    
    var PlayerScore:Int = 0
    
    @IBOutlet weak var EnemyScoreLable: UILabel!
    
    var EnemyScore:Int = 0
    
    var CardNamesArray:[String] = ["Card2", "Card3", "Card4", "Card5", "Card6", "Card7", "Card8", "Card9", "Card10", "Card11", "Card12", "Card13", "Card1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PlayRoundtap(_ sender: UIButton) {
     
        //Randomize a number for first image view.
        
        let FirstRandomNumber:Int = Int(arc4random_uniform(13))
        
        //Construct a string with random number.
        let FirstCardString:String = self.CardNamesArray[FirstRandomNumber]
        
        //set the first card image view to the asset corresponding to the randomized number.
        
        self.FirstCardimageview.image = UIImage(named: FirstCardString)
        
        
        let SecondRandomNumber:Int = Int(arc4random_uniform(13))
        
        let SecondCardString:String = self.CardNamesArray[SecondRandomNumber]
        
        self.SecondCardimageview.image = UIImage(named: SecondCardString)
        
        //Determine the higher card.
        
        if FirstRandomNumber > SecondRandomNumber {
            
            //First card is larger
            
            self.PlayerScore += 1
            self.PlayerScoreLable.text = String(self.PlayerScore)
        }
        else if FirstRandomNumber == SecondRandomNumber {
        }
        
        else {
            
            self.EnemyScore += 1
            self.EnemyScoreLable.text = String(self.EnemyScore)
        }
        
    }

}

