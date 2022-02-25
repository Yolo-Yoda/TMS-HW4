//
//  ViewController.swift
//  hometask7.1
//
//  Created by Виктор Васильков on 25.02.22.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: - Override properties
    var blueButton = UIButton()
    
//MARK: - IBOOutlets
    @IBOutlet weak var view2: UIView!
    @IBOutlet var navigateButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomBlueButton()
    }
    
//MARK: - Public methods
    func buttonTop () {
        blueButton.frame = CGRect(
                x: blueButton.frame.origin.x,
                y: blueButton.frame.origin.y - 10,
                width: 40,
                height: 40)
    }
    func buttonBottom () {
        blueButton.frame = CGRect(
                x: blueButton.frame.origin.x,
                y: blueButton.frame.origin.y + 10,
                width: 40,
                height: 40)
    }
    func buttonLeft () {
        blueButton.frame = CGRect(
                x: blueButton.frame.origin.x - 10,
                y: blueButton.frame.origin.y,
                width: 40,
                height: 40)
    }
    func buttonRight () {
        blueButton.frame = CGRect(x: blueButton.frame.origin.x + 10,
                                  y: blueButton.frame.origin.y,
                                  width: 40,
                                  height: 40)
    }
//MARK: - Private methods
    private func randomBlueButton(){
        blueButton.frame = CGRect(
            x: view.frame.width / 4,
            y: view.frame.height / 4,
            width: 40,
            height: 40)
        blueButton.backgroundColor = .blue
        blueButton.layer.cornerRadius = blueButton.frame.height / 2
        self.view.addSubview(blueButton)
    }
//MARK: - IBAActions
    @IBAction func pushButton(_ sender: UIButton){
        let maxX = view.frame.width - 40
        let maxY = view.frame.height - 40
        if sender.tag == 1 {
            if blueButton.frame.origin.y - 10 > 40 { buttonTop()
            }
        } else if sender.tag == 2 {
            if blueButton.frame.origin.y - 10 < maxY - 40 { buttonBottom()
            }
        } else if sender.tag == 3 {
            if blueButton.frame.origin.x - 10 > 0 { buttonLeft()
            }
        }else if sender.tag == 4 {
            if blueButton.frame.origin.x + 10 < maxX - 10 { buttonRight()
            }
            
        }
    }
}

