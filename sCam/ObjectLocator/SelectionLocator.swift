//
//  SelectionLocator.swift
//  sCam
//
//  Created by 道関孝行 on 2021/11/16.
//

import Foundation

class selectionLocator {
    
    // セレクションタイプと項目数を保持する
    static private var selectionSetting: String!
    
    /**
     * parameter String, Int
     * return none
     * 受け取ったKeyとValueをselectionSettingに登録する
     */
    static func setSelectionSetting(key: String) {
        selectionSetting = key
    }
    
    /**
     * parameter none
     * return (String, Int)
     * selectionSettingから値を取り出す
     */
    static func getSelectionSetting() -> String {
        return selectionSetting
    }
    
}
