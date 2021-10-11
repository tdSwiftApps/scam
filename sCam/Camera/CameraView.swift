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
    
    // シャッター
    let shutter: UIButton!
    // シャッターの外枠
    let shutterLine: UIView!
    
    required init(model: CameraModel) {
        // 画像を表示するビュー
        captureImageView = UIImageView()
        // シャッター
        shutter = UIButton()
        // シャッターの外枠
        shutterLine = UIView()
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        // カメラ画面の背景色
        self.backgroundColor = .black
        
        // 画像を表示するビュー
        captureImageView.frame = CGRect(x: 0, y: 0, width: Const.width, height: Const.width / 3 * 4)
        captureImageView.layer.position = CGPoint(x: Const.width / 2, y: Const.height * 0.45)
        
        // シャッター
        shutter.frame = CGRect(x: 0, y: 0, width: Const.width * 0.14, height: Const.width * 0.14)
        shutter.layer.position = CGPoint(x: Const.width / 2, y: Const.height * 0.9)
        shutter.backgroundColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        shutter.layer.cornerRadius = shutter.frame.width / 2
        
        // シャッターの外枠
        shutterLine.frame = CGRect(x: 0, y: 0, width: Const.width * 0.18, height: Const.width * 0.18)
        shutterLine.layer.position = CGPoint(x: Const.width / 2, y: Const.height * 0.9)
        shutterLine.backgroundColor = .clear
        shutterLine.layer.borderWidth = 3
        shutterLine.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1).cgColor
        shutterLine.layer.cornerRadius = shutterLine.frame.width / 2
        
        self.addSubview(captureImageView)
        self.addSubview(shutterLine)
        self.addSubview(shutter)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been impremented")
    }
    
}
