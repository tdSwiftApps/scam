//
//  CameraView.swift
//  sCam
//
//  Created by 道関孝行 on 2021/10/05.
//

import Foundation
import UIKit

class CameraView: UIView {
    
    required init(model: CameraModel) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been impremented")
    }
    
}
