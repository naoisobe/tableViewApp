//
//  addListViewController.swift
//  tableViewApp
//
//  Created by 磯部直 on 2020/09/06.
//  Copyright © 2020 isobe.com. All rights reserved.
//

import UIKit

class addListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var addText: UITextField!
    
//
    var array = [String]()
    
    @IBAction func addButton(_ sender: Any) {
        
        
        
        if UserDefaults.standard.object(forKey: "add") != nil{
                    
//      保存されている値をarrayの中に再度格納する
            
            array = UserDefaults.standard.object(forKey: "add") as! [String]
            

        }
        
        array.append(addText.text!)
        
        UserDefaults.standard.set(array, forKey: "add")
        
        self.navigationController?.popViewController(animated: true)
        
    
       
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
