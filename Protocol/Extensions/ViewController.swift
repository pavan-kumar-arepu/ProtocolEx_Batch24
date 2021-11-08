//
//  ViewController.swift
//  Extensions
//
//  Created by Pavankumar Arepu on 02/11/2021.
//

import UIKit


class ViewController: UIViewController, AmountProtocol {
    func moveBackWithUpdatedAmount(amount: Int) {
        greetingText = greetingText + ": And the amount from Second VC is: \(amount) "
        greetingsLabel.text  = greetingText
    }
    
    @IBOutlet weak var greetingsLabel: UILabel!
    
    var greetingText = "Hai This is a string from FirstViewController"
    var secondVCWelcomeString = "Hai This is string from Frist VC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FirstVC"
        greetingsLabel.text = greetingText
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @IBAction func continueAction(_ sender: Any) {
        
        print("Tapped Continue Button")
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        secondViewController.welcomeString = secondVCWelcomeString
        secondViewController.amountProtocol = self
        
//        self.present(secondViewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}


/*
 let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
 let secondViewController = storyBoard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
 secondViewController.eatableDelegate = self
 self.present(secondViewController, animated: true, completion: nil)
 */
