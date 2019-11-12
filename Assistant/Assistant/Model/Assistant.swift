//
//  Operation.swift
//  Assistant
//
//  Created by Waggle Glow on 04/11/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

class Assistant {
    var numberAssistant = 0
    
    func addAssistant() {
        if numberAssistant < 10 {
            self.numberAssistant += 1
            print("Add Assistant!")
        }
    }
    
    func deleteAssistant() {
        if numberAssistant > 0 {
            self.numberAssistant -= 1
            print("Delete Assistant!")
        }
    }
}
