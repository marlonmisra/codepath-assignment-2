//
//  TutorialViewController.swift
//  assignment_2
//
//  Created by Marlon Misra on 9/29/15.
//  Copyright © 2015 Marlon Misra. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var pageController: UIPageControl!
    
    @IBOutlet weak var scrollViewTutorial: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollViewTutorial.contentSize = CGSizeMake(1280, 568)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageController.currentPage = page
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
