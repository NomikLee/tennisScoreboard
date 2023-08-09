//
//  tennisViewController.swift
//  tennisScoreboard
//
//  Created by Pinocchio on 2023/8/9.
//

import UIKit

class tennisViewController: UIViewController {

    var pointOneNumber = 0
    var pointTwoNumber = 0
    
    @IBOutlet weak var pointOne: UILabel!
    @IBOutlet weak var pointTwo: UILabel!
    
    @IBOutlet var pointOneGame: [UILabel]!
    @IBOutlet var pointTwoGame: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 0, green: 51/255, blue: 25/255, alpha: 1)
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 77, y: 60))
        path.addLine(to: CGPoint(x: 810, y: 60))
        path.addLine(to: CGPoint(x: 810, y: 70))
        path.addLine(to: CGPoint(x: 77, y: 70))
        path.close()
        
        let blueTriangleLayer = CAShapeLayer()
        blueTriangleLayer.path = path.cgPath
        blueTriangleLayer.fillColor = CGColor(red: 76/255, green: 0, blue: 153/255, alpha: 1)
        view.layer.addSublayer(blueTriangleLayer)
    }
    
    @IBAction func pointsOneAdd(_ sender: Any) {
        pointOneNumber += 15
        pointOne.text = "\(pointOneNumber)"
    }
    
    @IBAction func pointsTwoAdd(_ sender: Any) {
        pointTwoNumber += 15
        pointTwo.text = "\(pointTwoNumber)"
    }
    
    @IBAction func allReset(_ sender: Any) {
        
        pointOneNumber = 0
        pointTwoNumber = 0
        pointOne.text = ""
        pointTwo.text = ""
        
        for oneGame in pointOneGame {
            oneGame.text = ""
        }
        for twoGame in pointTwoGame {
            twoGame.text = ""
        }
    }
    
}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "tennisViewController")
}
