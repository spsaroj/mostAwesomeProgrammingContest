//
//  StudentsViewController.swift
//  programmingContest
//
//  Created by student on 3/14/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {
    var selectedTeam:Team!
    @IBOutlet weak var studentTF0: UILabel!
    @IBOutlet weak var student1TF: UILabel!
    @IBOutlet weak var student2TF: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let display = selectedTeam.students
        studentTF0.text = display[0]
        student1TF.text = display[1]
        student2TF.text = display[2]
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
