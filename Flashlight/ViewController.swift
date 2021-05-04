//
//  ViewController.swift
//  Flashlight
//
//  Created by hsh on 2021/05/04.
//

import UIKit

class ViewController: UIViewController {
    // IB : Interface Builder
    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var flashImageView: UIImageView!
    var isOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchTapped(_ sender: Any) {
        isOn = !isOn
        if isOn{
//            switchButton.setImage(UIImage(named: "onSwitch"), for: .normal)
//            flashImageView.image = UIImage(named: "onBG")
            switchButton.setImage(#imageLiteral(resourceName: "onSwitch"), for: .normal)
            flashImageView.image = #imageLiteral(resourceName: "onBG") // image Literal 사용!!
        }
        else{
//            switchButton.setImage(UIImage(named: "offSwitch"), for: .normal)
//            flashImageView.image = UIImage(named: "offBG")
            switchButton.setImage(#imageLiteral(resourceName: "offSwitch"), for: .normal)
            flashImageView.image = #imageLiteral(resourceName: "offBG")
        }
        
        // 이렇게 한줄로도 가능
        flashImageView.image = isOn ? #imageLiteral(resourceName: "onBG") : #imageLiteral(resourceName: "offBG")
        switchButton.setImage(isOn ? #imageLiteral(resourceName: "onSwitch") : #imageLiteral(resourceName: "offSwitch"), for: .normal)
        
    }
    
}

