//
//  ViewController.swift
//  TappyTap
//
//  Created by Jim Aven on 10/20/15.
//  Copyright © 2015 Jim Aven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //properties
    var maxTaps = 0
    var curTaps = 0
    
    //Outlets
    @IBOutlet weak var imgLogo:UIImageView!
    @IBOutlet weak var howManyTapsText:UITextField!
    @IBOutlet weak var btnPlay:UIButton!
    
    @IBOutlet weak var btnTap:UIButton!
    @IBOutlet weak var tapsLabel:UILabel!
    
    @IBAction func btnCoinTapped (sender:UIButton) {
        curTaps++
        updateTapsLabel()
        if isGameOver() {
            restartGame()
        }
    }
    
    
    @IBAction func onPlayBtnPressed (sender:UIButton!){
        
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            
            imgLogo.hidden = true
            btnPlay.hidden = true
            howManyTapsText.hidden = true
            
            btnTap.hidden = false
            tapsLabel.hidden = false
            maxTaps = Int(howManyTapsText.text!)!
            curTaps = 0
            
            updateTapsLabel()
        }
    }
    
    func updateTapsLabel(){
        tapsLabel.text = "\(curTaps) Taps"
    }
    
    func isGameOver () -> Bool {
        if curTaps >= maxTaps {
            return true
        }
        else {
            return false
        }
    }
    
    func restartGame () {
        
        maxTaps = 0
        howManyTapsText.text = ""
        
        btnPlay.hidden = false
        imgLogo.hidden = false
        howManyTapsText.hidden = false
        
        btnTap.hidden = true
        tapsLabel.hidden = true
    }
}

