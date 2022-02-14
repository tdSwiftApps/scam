//
//  SelectionViewController.swift
//  sCam
//
//  Created by 道関孝行 on 2021/11/15.
//

import UIKit

class SelectionViewController: UIViewController, UITableViewDelegate {
    
    let selectionModel = SelectionModel()
    
    override func loadView() {
        self.view = SelectionView(model: selectionModel)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルビューデリゲート
        let selectionView = self.view as! SelectionView
        selectionView.selectionTable.delegate = self
        selectionView.selectionTable.dataSource = selectionModel
        

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
