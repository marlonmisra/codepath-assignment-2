//
//  SettingsViewController.swift
//  assignment_2
//
//  Created by Marlon Misra on 9/30/15.
//  Copyright © 2015 Marlon Misra. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var SettingsViewControllerScrollView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        SettingsViewControllerScrollView.contentSize = CGSizeMake(320, 695)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
