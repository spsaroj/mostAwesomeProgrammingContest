//
//  NewSchoolsViewController.swift
//  programmingContest
//
//  Created by s527993 on 3/14/19.
//  Copyright © 2019 s527993. All rights reserved.
//

import UIKit

class NewSchoolViewController: UIViewController {
    
    let school = Schools.shared

    @IBOutlet weak var nameUI: UITextField!
    @IBOutlet weak var coachUI: UITextField!
    @IBAction func cancelAxn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneAxn(_ sender: Any) {
        if let name = nameUI.text, let coach = coachUI.text{
            if name.count>0{
                school.add(school: School(name: name, coach: coach, teams: []))
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
