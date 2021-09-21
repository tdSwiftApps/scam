//
//  MainViewController.swift
//  sCam
//
//  Created by 道関孝行 on 2021/09/21.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainModel = MainModel()
    
    override func loadView() {
        self.view = MainView(model: mainModel)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let mainView = self.view as! MainView
        
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
