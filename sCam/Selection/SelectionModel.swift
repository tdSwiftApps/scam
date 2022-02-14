//
//  SelectionModel.swift
//  sCam
//
//  Created by 道関孝行 on 2021/11/15.
//

import Foundation
import UIKit

let selectionCellId = "selectionCellId"

class SelectionModel: NSObject, UITableViewDataSource {
    
    private var selectionType: String!
    
    override init() {
        super.init()
        self.selectionType = selectionLocator.getSelectionSetting()
    }
    
    /**
     * parameter UITableView, Int
     * return Int
     * セルの数を設定する
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    /**
     * parameter UITableView, IndexPath
     * return UITableViewCell
     * セルを作成する
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: selectionCellId)
        return cell
    }
    
}
