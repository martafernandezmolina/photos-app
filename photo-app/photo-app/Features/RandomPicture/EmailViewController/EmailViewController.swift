//
//  EmailViewController.swift
//  photo-app
//
//  Created by Marangi  on 05/11/2020.
//

import UIKit

class EmailViewController: UIViewController {
    var key = "myKey"
  @IBOutlet weak var nameOutlet: UITextField!
  
  @IBOutlet weak var textViewOutlet: UITextView!
  @IBOutlet weak var emailOutlet: UITextField!
  
 
  @IBAction func saveButton(_ sender: Any) {
    guard let name  = nameOutlet.text, let email = emailOutlet.text else { return }
    let fullString:String = "\(name)\(email)"
    
    let defaults = UserDefaults.standard
    defaults.set(fullString, forKey: key)
    // guarda
  
    func viewDidLoad() {
        super.viewDidLoad()
      
      var getInformation = UserDefaults.standard
      defaults.string(forKey: key)
      
      textViewOutlet.text.append("\(getInformation)")
      
      
      
      
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
}
