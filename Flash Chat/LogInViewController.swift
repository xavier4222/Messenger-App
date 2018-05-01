
//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD


class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextfield.text = "123@g.com"
        passwordTextfield.text = "123456"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
//        let loginButton = UIView(CGRect(x: self.view.frame.width , y: 40, width: self.view.frame.width, height: self.view.frame.height))
//
//        logInPressed.
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            }else {
                print("succesful")
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToChat", sender: sender.self)
            }
        }
        
    }
    


    
}  
