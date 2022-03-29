//
//  ViewController.swift
//  StudentDetailsApp
//
//  Created by student on 3/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sIDOutlet: UITextField!
    
    var studentFound = Student()
    
    var isStudent = false
    
    var studentArray = students
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStudentDetailsButtonClicked(_ sender: UIButton) {
        
        let enteredID = sIDOutlet.text!
        
        for student in studentArray{
            if enteredID == student.sid{
                studentFound = student
                isStudent = true
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "studentInfoSegue"{
            let destination = segue.destination as! StudentInfoViewController
            
            if isStudent{
                destination.studentObj = studentFound
            }else{
                destination.guestUser = true
            }
        }
    }
}

