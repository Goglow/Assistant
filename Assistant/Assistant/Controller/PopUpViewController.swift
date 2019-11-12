//
//  PopUpViewController.swift
//  Assistant
//
//  Created by Waggle Glow on 09/11/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.layer.cornerRadius = 10
        popUpView.clipsToBounds = true
    }
    
    @IBAction func closePopUp(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
