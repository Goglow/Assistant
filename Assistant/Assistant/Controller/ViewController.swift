//
//  ViewController.swift
//  Assistant
//
//  Created by Waggle Glow on 03/11/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var assistantLabel: UILabel!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var assistant = Assistant()

    @IBAction func didTapDeleteButton() {
        deleteOperation()
    }
    
    private func deleteOperation() {
        assistant.deleteAssistant()
    }
    
    @IBAction func didTapAddButton() {
        addOperation()
    }
    
    private func addOperation() {
        assistant.addAssistant()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        assistant.numberAssistant = Int(assistantLabel.text)
    }
}
