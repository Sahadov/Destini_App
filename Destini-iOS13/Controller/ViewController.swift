//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getFirstChoice(), for: .normal)
        choice2Button.setTitle(storyBrain.getSecondChoice(), for: .normal)
    }
    
    
    @IBAction func choicePressed(_ sender: UIButton) {
        let userChoice = sender.currentTitle
        storyBrain.nextStory(userChoice: userChoice!)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }


}

