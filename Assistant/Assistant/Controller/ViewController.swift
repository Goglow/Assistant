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
 
    override func viewDidLoad() {
        super.viewDidLoad()
        addModelNotificationObserver(name: "limitReached")
        addModelNotificationObserver(name: "assistantSet")
    }
    
    @objc func limitReached() {
        let message = "The maximum number of assistants that can be added has just been reached."
        let alert = UIAlertController(title: "Limit Reached", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: {(_: UIAlertAction!) in
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func assistantSet() {
        assistantLabel.text = String(assistant.numberAssistant)
    }
 
    @IBAction func didTapDeleteButton(_ sender: Any) {
        assistant.deleteAssistant()
    }
    
    @IBAction func didTapAddButton(_ sender: Any) {
        assistant.addAssistant()
    }
    
    private func addModelNotificationObserver(name: String) {
        let selector = Selector((name))
        NotificationCenter.default.addObserver(
        self, selector: selector,
        name: Notification.Name(rawValue: name), object: nil)
    }
    
}
