//
//  NumberViewController.swift
//  Screens
//
//  Created by Steven Leyva on 4/29/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       // 1. customize the label
        
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        //label.center = view.center
        label.text = "1"
        label.text = "HELLO"
        label.sizeToFit()
        label.center = view.center //repostion after a new size
        
        view.addSubview(label)
        
        // 2. figure out how to display navigation stack count
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        // 2. Figure out how to display navigation stack count
        if let number = navigationController?.viewControllers.count {
            label.text = String(number)
            label.sizeToFit()
            label.center = view.center
            
        }
        @IBAction func done(_ sender: Any){
            navigationController?.popViewController(animated: true)
        }
        
        
    }
    
    
let label = UILabel() // zero sized label


}
