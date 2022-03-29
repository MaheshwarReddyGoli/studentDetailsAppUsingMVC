//
//  CourseViewController.swift
//  StudentDetailsApp
//
//  Created by student on 3/24/22.
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet weak var courseDetailsLabel: UILabel!
    
    var coursesArray:[Course] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for course in coursesArray {
                    courseDetailsLabel.text = courseDetailsLabel.text! + course.title + "-" + course.sem + "\n"
                }
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
