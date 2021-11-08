//
//  SecondViewController.swift
//  Extensions
//
//  Created by Pavankumar Arepu on 03/11/2021.
//

import Foundation
import UIKit


protocol AmountProtocol: class {
    func moveBackWithUpdatedAmount(amount: Int)
}

class SecondViewController: UIViewController {
    var welcomeString = ""
    
    var calulatedAmount = 10 + 20
    
    weak var amountProtocol: AmountProtocol?
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeString
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @IBAction func goBack(_ sender: Any) {
        amountProtocol?.moveBackWithUpdatedAmount(amount: calulatedAmount)
        self.navigationController?.popViewController(animated: true)
    }
    
}
