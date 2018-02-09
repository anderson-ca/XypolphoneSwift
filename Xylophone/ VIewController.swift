//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

// the AVAudioPlayer protocol responds to audio interruptions,
// and audio recording errrors.
class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player : AVAudioPlayer!
    let notesArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    // IBA will execute some functionality once the user interacts
    // the this element in a specified way. Also, sender refers to
    // the button or element that triggered that reaction.
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(note : notesArray[sender.tag - 1])
       
        }
    
    //////////////////////////////////////////////
    ///////////// play sound method ///////////////
    ///////////////////////////////////////////////
    func playSound(note : String) {
        // url that connects to my audio file
        let url = Bundle.main.url(forResource: note, withExtension: "wav")!
        
        
        do {
            
            try player = AVAudioPlayer(contentsOf: url)
            
            // (manual overwrite)the catch block cna be deleted and overwritten if I place an exclamation mark
            // in front of the try statement. Which indicates that I don't expect an error t be caught.
        } catch {
            print(error)
        }
        
        player.play()
        
    }
        
    }

