//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Guseyn on 25/04/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    
    var storyBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoise = sender.currentTitle!
        
         storyBrain.nextStory(userChoise)
        
           
        
        
        updateUi()
        
        
    }
    
    func updateUi(){
        storyLabel.text=storyBrain.storries[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.storries[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storries[storyBrain.storyNumber].choice2, for: .normal)
    }
    
    
    
    
}

