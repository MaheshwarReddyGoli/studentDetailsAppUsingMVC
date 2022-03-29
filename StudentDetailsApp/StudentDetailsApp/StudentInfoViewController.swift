//
//  StudentInfoViewController.swift
//  StudentDetailsApp
//
//  Created by student on 3/24/22.
//

import UIKit

class StudentInfoViewController: UIViewController {

    @IBOutlet weak var studentNameLabel: UILabel!
    
    @IBOutlet weak var studentsIDLabel: UILabel!
    
    @IBOutlet weak var studentEmailLabel: UILabel!
    
    
    @IBOutlet weak var getCourseButton: UIButton!
    
    var studentObj = Student()
    
    var guestUser:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if guestUser{
            studentNameLabel.text = "Name: Guest User"
            studentsIDLabel.isHidden = true
            studentEmailLabel.isHidden = true
            getCourseButton.isHidden = true
        }else{
            studentsIDLabel.text = "SID: " + studentObj.sid
            studentEmailLabel.text = "Email: " + studentObj.email
            studentNameLabel.text = "Name: " + studentObj.name
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

    @IBAction func getCourseDetailsButtonClicked(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "CourseSegue"{
            let destination = segue.destination as! CourseViewController
            destination.coursesArray = studentObj.courses
        }
    }
}
