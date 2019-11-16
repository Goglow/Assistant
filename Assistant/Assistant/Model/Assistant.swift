//
//  Operation.swift
//  Assistant
//
//  Created by Waggle Glow on 04/11/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

class Assistant {
    
    let assistantLimit = 10
    var numberAssistant: Int = 0 {
        didSet {
            if numberAssistant < 0 {
                numberAssistant = 0
            } else if numberAssistant > assistantLimit {
                numberAssistant = assistantLimit
                sendNotification(name: "limitReached")
            }
            sendNotification(name: "assistantSet")
        }
    }
    
    func addAssistant() {
        self.numberAssistant += 1
    }
    
    func deleteAssistant() {
        self.numberAssistant -= 1
    }
    
    private func sendNotification(name: String) {
        let name = Notification.Name(rawValue: name)
        let notification = Notification(name: name)
        NotificationCenter.default.post(notification)
    }
}
