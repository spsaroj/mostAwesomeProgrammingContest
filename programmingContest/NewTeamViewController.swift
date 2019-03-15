//
//  NewTeamViewController.swift
//  programmingContest
//
//  Created by student on 3/14/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    var newTeam:School!
    @IBOutlet weak var teamNameTF: UITextField!
    @IBOutlet weak var student0TF: UITextField!
    @IBOutlet weak var student1TF: UITextField!
    @IBOutlet weak var student2TF: UITextField!
    @IBAction func doneAxn(_ sender: Any) {
        if let name = teamNameTF.text, let student0 = student0TF.text, let student1 = student1TF.text, let student2 = student2TF.text{
            if name.count>0{
                newTeam.addTeam(name: name, students: [student0, student1, student2])
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelAxn(_ sender: Any) {
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
