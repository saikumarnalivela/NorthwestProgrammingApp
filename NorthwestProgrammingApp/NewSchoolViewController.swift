//
//  NewSchoolViewController.swift
//  NorthwestProgrammingApp
//
//  Created by student on 3/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class NewSchoolViewController: UIViewController {
    @IBAction func CancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func DoneBTN(_ sender: Any) {
        let nametf = NameTF.text
        let coachtf = CoachName.text
        let addschool = schooldes(name: nametf!, coach: coachtf!)
        school.schools.add(schooldes: addschool)
        super.viewDidLoad()
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var CoachName: UITextField!
    
    
    
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
