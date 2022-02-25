//
//  ViewController.swift
//  homestak7
//
//  Created by Виктор Васильков on 24.02.22.
//

import UIKit

class ViewController: UIViewController {
    let mainButton = UIButton()
    let secondButton = UIButton()
    var countRounds = 0
    @IBOutlet weak var count: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count.text = "Ты словил: \(countRounds) клубков"
        randomButton()
        mainButton.addTarget(self, action: #selector(pushButton), for: .touchUpInside)
        randomSecondButton()
        secondButton.addTarget(self, action: #selector(pushSecondButton), for: .touchUpInside)
    }
    
    private func randomButton(){
        mainButton.frame = self.view.bounds
        mainButton.bounds = CGRect(
            x: view.frame.width/2,
            y: view.frame.height/2,
            width: 40,
            height: 40)
        mainButton.setImage(UIImage (named: "myimage"), for: .normal)
        mainButton.layer.cornerRadius = mainButton.bounds.height / 2
        self.view.addSubview(mainButton)
    }
    
    private func randomSecondButton(){
        secondButton.frame = CGRect(
            x: Int(self.view.bounds.width / 4),
            y: Int(self.view.bounds.height / 4),
            width: 40,
            height: 40)
        secondButton.backgroundColor = .red
        secondButton.layer.cornerRadius = secondButton.bounds.height / 2
        self.view.addSubview(secondButton)
    }
    
    @objc func pushButton() {
        let maxX = view.frame.width
        let maxY = view.frame.height
        let newX = Double.random(in: 0...Double(maxX - 40))
        let newY = Double.random(in: 16...Double(maxY - 200))
        mainButton.frame = CGRect(x: newX, y: newY, width: 40, height: 40)
        catchBall()
        count.text = "Ты словил: \(countRounds) клубков"
    }
    
    @objc func pushSecondButton() {
        let maxX = view.frame.width
        let maxY = view.frame.height
        let newX = Double.random(in: 0...Double(maxX - 40))
        let newY = Double.random(in: 16...Double(maxY - 200))
        secondButton.frame = CGRect(x: newX, y: newY, width: 40, height: 40)
        catchBall()
        count.text = "Ты словил: \(countRounds) клубков"
    }
    
    private func catchBall () {
        countRounds += 1
    }


}

