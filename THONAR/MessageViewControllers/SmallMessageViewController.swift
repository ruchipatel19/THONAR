//
//  SmallMessageViewController.swift
//  THONAR
//
//  Created by Kevin Gardner on 1/10/19.
//  Copyright © 2019 THON. All rights reserved.
//

import UIKit

class SmallMessageViewController: UIViewController {
    
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var message: UILabel!
    
    var delay: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messageView.layer.cornerRadius = 10
        
        self.view.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3, delay: delay, options: UIView.AnimationOptions.curveLinear, animations: {
            self.view.alpha = 1
        })
        print("SmallMessageViewController Appeared")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
