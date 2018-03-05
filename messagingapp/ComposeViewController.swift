//
//  ComposeViewController.swift
//  messagingapp
//
//  Created by Rebecca Hsiao on 2018/03/04.
//  Copyright © 2018年 Rebecca Hsiao. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ComposeViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var ref: DatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    @IBAction func addPost(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
        ref?.child("Posts").childByAutoId().setValue(textView.text)
    }
    @IBAction func cancelPost(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
