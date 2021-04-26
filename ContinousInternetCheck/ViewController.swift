//
//  ViewController.swift
//  ContinousInternetCheck
//
//  Created by Vrushabh Dhameliya on 30/12/20.
//abc

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Internet.shareInstance.monitor { (result) in
            if result == true{
                DispatchQueue.main.async {
                    self.view.backgroundColor = #colorLiteral(red: 0.3892472982, green: 0.7497725487, blue: 0.3835872412, alpha: 1)
                }
            }else{
                DispatchQueue.main.async {
                    self.view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
                }
            }
        }
    }

    @IBAction func navBtnAct(_ sender: Any) {
        let stb = self.storyboard?.instantiateViewController(identifier: "SecondVC") as! SecondVC
        self.navigationController?.pushViewController(stb, animated: true)
    }
    
}

