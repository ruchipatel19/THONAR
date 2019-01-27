//
//  LargeMessageViewController.swift
//  THONAR
//
//  Created by Kevin Gardner on 1/10/19.
//  Copyright © 2019 THON. All rights reserved.
//

import UIKit

class LargeMessageViewController: UIViewController {

    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var message: UILabel!
    
    // Option settable variable to delay the alert message
    var delay: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messageView.layer.cornerRadius = 25
        
        // Sets alpha to 0 to fade the view in
        self.view.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Fades in the alert message
        UIView.animate(withDuration: 0.3, delay: delay, options: UIView.AnimationOptions.curveLinear, animations: {
            self.view.alpha = 1
        })
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
