//
//  EmailViewController.swift
//  photo-app
//
//  Created by Marangi  on 05/11/2020.
//

import UIKit

class EmailViewController: UIViewController {
  let mykey2 = "mykey2"
  var myKey = "myKey"
  @IBOutlet weak var nameOutlet: UITextField!
  
  @IBOutlet weak var textViewOutlet: UITextView!
  @IBOutlet weak var emailOutlet: UITextField!
  
  @IBAction func resetButton(_ sender: Any) {
    let alert = UIAlertController(title: "Alerta", message: "seguero que quieres borrar?", preferredStyle: UIAlertController.Style.alert)
    
    // add the actions (buttons)
    alert.addAction(UIAlertAction(title: "continuar", style: UIAlertAction.Style.default, handler:
                                    { action in
                                      UserDefaults.standard.removeObject(forKey: self.myKey)
                                      UserDefaults.standard.synchronize()
                                      print ("se ha borrado")
                                    }))
    alert.addAction(UIAlertAction(title: "cancelar", style: UIAlertAction.Style.cancel, handler:{ action in
                                    print("se ha cancelado")}))
    
    // show the alert
    self.present(alert, animated: true, completion: nil)
    
    //    let clear: Void = UserDefaults.standard.removeObject(forKey: self.myKey)
    //    let alert = UIAlertController(title: "", message: "Seguro que quieres borrar?", preferredStyle: UIAlertController.Style.alert)
    //    alert.addAction(UIAlertAction(title: "borrar", style: UIAlertAction.Style.default, handler: clear)) // textfieldshoudlclear ()
    //    self.present(alert, animated: true, completion: nil)
    
    
    //  UserDefaults.standard.synchronize()
    
    
  }
  
  @IBAction func saveButton(_ sender: Any) {
    guard let name  = nameOutlet.text, let email = emailOutlet.text else { return }
    let fullString:String = "\(name);\(email)"
    
    let defaults = UserDefaults.standard
    defaults.set(fullString, forKey: myKey)
    defaults.synchronize()
   var myArray:[String] = ["name0", "name1", "name2"]
  
    let userArray = UserDefaults.standard
defaults.set(myArray, forKey:mykey2)
    myArray.append("name4")
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let getInformation = UserDefaults.standard.string(forKey: myKey) {
      textViewOutlet.text = "\(getInformation)"
    }
    
    let gettingFromMyArray = UserDefaults.standard.stringArray(forKey: mykey2)
    print(gettingFromMyArray)
    
    // textViewOutlet.text.append("\(getInformation)")
    
  }
  
}
