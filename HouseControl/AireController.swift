//
//  AireController.swift
//  HouseControl
//
//  Created by Ernesto Salazar on 29/03/17.
//  Copyright © 2017 DreamTeamCo. All rights reserved.
//

import UIKit

class AireController: UIViewController {
    
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var imgC: UILabel!
    
    @IBOutlet weak var imgF1: UIImageView!
    @IBOutlet weak var imgF2: UIImageView!
    @IBOutlet weak var imgF3: UIImageView!
    @IBOutlet weak var imgF4: UIImageView!
    @IBOutlet weak var imgF5: UIImageView!
    @IBOutlet weak var imgF6: UIImageView!
    @IBOutlet weak var imgF7: UIImageView!
    @IBOutlet weak var imgF8: UIImageView!

    var num = 0
    var snum = 0
    var mnum = 0
    var fnum = 0
    var temp = 22
    
    @IBAction func doTapRegresar(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doTapON(_ sender: Any) {
        
        if (num == 0){
            imgF1.isHidden = false
            imgF5.isHidden = false
            imgC.isHidden = false
            lblTemp.isHidden = false
            num = 1
        }else{
            imgF1.isHidden = true
            imgF2.isHidden = true
            imgF3.isHidden = true
            imgF4.isHidden = true
            imgF5.isHidden = true
            imgF6.isHidden = true
            imgF7.isHidden = true
            imgF8.isHidden = true
            imgC.isHidden = true
            lblTemp.isHidden = true
            num = 0
        }
    }
   
    @IBAction func doTapSwing(_ sender: Any) {
        if (snum == 0){
            imgF8.isHidden = false
            snum = 1
        }else{
            imgF8.isHidden = true
            snum = 0
        }
    }
   
    @IBAction func doTapMode(_ sender: Any) {
        if (mnum == 0){
            imgF1.isHidden = true
            imgF2.isHidden = false
            imgF3.isHidden = true
            imgF4.isHidden = true
            mnum = 1
        }else{
            if (mnum == 1){
                imgF1.isHidden = true
                imgF2.isHidden = true
                imgF3.isHidden = false
                imgF4.isHidden = true
                mnum = 2
            }
            else{
                if (mnum == 2){
                    imgF1.isHidden = true
                    imgF2.isHidden = true
                    imgF3.isHidden = true
                    imgF4.isHidden = false
                    mnum = 3
                }
                else{
                    if (mnum == 3){
                        imgF1.isHidden = false
                        imgF2.isHidden = true
                        imgF3.isHidden = true
                        imgF4.isHidden = true
                        mnum = 0
                    }
                }
            }
            
        }
       
    }
    
    @IBAction func doTapFan(_ sender: Any) {
        if (fnum == 0){
            imgF5.isHidden = true
            imgF6.isHidden = false
            imgF7.isHidden = true
            fnum = 1
        }else{
            if (fnum == 1){
                imgF5.isHidden = true
                imgF6.isHidden = true
                imgF7.isHidden = false
                fnum = 2
            }else{
                if (fnum == 2){
                    imgF5.isHidden = false
                    imgF6.isHidden = true
                    imgF7.isHidden = true
                    fnum = 0
                }
            }
        }
}
    
    @IBAction func doTapMas(_ sender: Any) {
        temp = temp + 1
        lblTemp.text = String(temp)
    }
    
    @IBAction func doTapMenos(_ sender: Any) {
        temp = temp - 1
        lblTemp.text = String(temp)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgF2.isHidden = true
        imgF3.isHidden = true
        imgF4.isHidden = true
        imgF6.isHidden = true
        imgF7.isHidden = true
        imgF8.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
