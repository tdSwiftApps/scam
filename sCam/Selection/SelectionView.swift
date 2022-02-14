//
//  SelectionView.swift
//  sCam
//
//  Created by 道関孝行 on 2021/11/15.
//

import Foundation
import UIKit

class SelectionView: UIView {
    
    // 設定項目のリスト
    let selectionTable: UITableView!
    
    required init(model: SelectionModel) {
        
        // 設定項目のリスト
        selectionTable = UITableView()
        
        super.init(frame: CGRect(x: 0, y: 0, width: Const.width, height: Const.height))
        
        // 設定項目のリスト
        selectionTable.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        
        self.addSubview(selectionTable)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
