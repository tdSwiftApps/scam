//
//  CameraView.swift
//  sCam
//
//  Created by 道関孝行 on 2021/10/05.
//

import Foundation
import UIKit

class CameraView: UIView {
    
    // 画像を表示するビュー
    var captureImageView: UIImageView!
    
    required init(model: CameraModel) {
        // 画像を表示するビュー
        captureImageView = UIImageView()
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        // 画像を表示するビュー
        captureImageView.frame = CGRect(x: 0, y: 0, width: Const.width, height: Const.width / 3 * 4)
        captureImageView.layer.position = CGPoint(x: Const.width / 2, y: Const.height * 0.45)
        
        self.addSubview(captureImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been impremented")
    }
    
}
