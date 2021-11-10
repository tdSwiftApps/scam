//
//  CameraModel.swift
//  sCam
//
//  Created by 道関孝行 on 2021/10/05.
//

import Foundation
import UIKit

class CameraModel: NSObject {
    
    // 正方形の定数
    private let squareScreen = 0
    // 長方形の定数(4:3)
    private let rectangleScreen = 1
    // フルサイズのスクリーン
    private let fullScreen = 2
    
    override init() {
        super.init()
    }
    
    /**
     * parameter Int
     * return CGRect
     * 表示する画像サイズを返す
     */
    func captureImageViewSize(sizeType: Int) -> CGRect {
        var resultSize: CGRect!
        switch sizeType {
        case squareScreen:
            resultSize = CGRect(x: 0, y: 0, width: Const.width, height: Const.width)
        case rectangleScreen:
            resultSize = CGRect(x: 0, y: 0, width: Const.width, height: Const.width / 3 * 4)
        case fullScreen:
            resultSize = CGRect(x: 0, y: 0, width: Const.width, height: Const.height)
        default:
            resultSize = CGRect(x: 0, y: 0, width: 0, height: 0)
        }
        return resultSize
    }
    
}
