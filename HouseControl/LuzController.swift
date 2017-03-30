//
//  LuzController.swift
//  HouseControl
//
//  Created by Ernesto Salazar on 29/03/17.
//  Copyright © 2017 DreamTeamCo. All rights reserved.
//

import UIKit

class LuzController: UIViewController {
    
    @IBOutlet weak var imgFoco: UIImageView!
    
    @IBAction func doTapRegresar(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var sldFoco: UISlider!
    
    @IBAction func sldActionFoco(_ sender: Any) {
        
        if sldFoco.value < 1{
            imgFoco.image = UIImage(named: "luz1.png")
        }
        if sldFoco.value > 2 && sldFoco.value < 3 {
            imgFoco.image = UIImage(named: "luz2.png")
        }
        if sldFoco.value > 3 && sldFoco.value < 4{
            imgFoco.image = UIImage(named: "luz3.png")
        }
        if sldFoco.value > 4 && sldFoco.value < 5{
            imgFoco.image = UIImage(named: "luz4.png")
        }
        if sldFoco.value > 5{
            imgFoco.image = UIImage(named: "luz5.png")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
