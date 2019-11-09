//
//  ViewController.swift
//  Assistant
//
//  Created by Waggle Glow on 03/11/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    // View outlets
    @IBOutlet weak var assistantLabel: UILabel!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    // Class Assistant
    var assistant = Assistant()
        
    // View actions
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
    }
    
    override func viewDidAppear(_ animated: Bool) {
        createAlert(title: "Limit reached", message: "The maximum number of assistants that can be added has just been reached.")
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
