//
//  CameraView.swift
//  sCam
//
//  Created by 道関孝行 on 2021/10/05.
//

import Foundation
import UIKit

class CameraView: UIView {
    
    // フッターボタンの配置height
    private let hPosition = Const.height * 0.88
    // 画像を表示するビュー
    var captureImageView: UIImageView!
    // シャッター
    let shutter: UIButton!
    // シャッターの外枠
    let shutterLine: UIView!
    // カメラ画面のサイズ変更ボタン
    var resizeCaptureImage: UIButton!
    // footerbutton1
    var footerButton1: UIButton!
    // footerbutton2
    var footerButton2: UIButton!
    // footerbutton3
    var footerButton3: UIButton!
    
    required init(model: CameraModel) {
        // 画像を表示するビュー
        captureImageView = UIImageView()
        // ボタンを配置するビュー
        let effect = UIBlurEffect(style: .light)
        let putButtonsView = UIVisualEffectView(effect: effect)
        // シャッター
        shutter = UIButton()
        // シャッターの外枠
        shutterLine = UIView()
        // カメラ画面のサイズ変更ボタン
        resizeCaptureImage = UIButton()
        // footerbutton1
        footerButton1 = UIButton()
        // footerbutton2
        footerButton2 = UIButton()
        // footerbutton3
        footerButton3 = UIButton()
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        // カメラ画面の背景色
        self.backgroundColor = .black
        
        // 画像を表示するビュー
        captureImageView.frame = CGRect(x: 0, y: 0, width: Const.width, height: Const.width / 3 * 4)
        captureImageView.layer.position = CGPoint(x: Const.width / 2, y: Const.height * 0.45)
        
        //ボタンを配置するビュー
        putButtonsView.frame = CGRect(x: 0, y: 0, width: Const.width * 0.96, height: Const.width * 0.2)
        putButtonsView.layer.position = CGPoint(x: Const.width / 2, y: hPosition)
        putButtonsView.layer.cornerRadius = Utility.roundedCornerValue(width: putButtonsView.frame.width)
        putButtonsView.layer.masksToBounds = true
        
        // シャッター
        shutter.frame = CGRect(x: 0, y: 0, width: Const.width * 0.14, height: Const.width * 0.14)
        shutter.layer.position = CGPoint(x: Const.width / 2, y: hPosition)
        shutter.backgroundColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        shutter.layer.cornerRadius = shutter.frame.width / 2
        
        // シャッターの外枠
        shutterLine.frame = CGRect(x: 0, y: 0, width: Const.width * 0.18, height: Const.width * 0.18)
        shutterLine.layer.position = CGPoint(x: Const.width / 2, y: hPosition)
        shutterLine.backgroundColor = .clear
        shutterLine.layer.borderWidth = 3
        shutterLine.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1).cgColor
        shutterLine.layer.cornerRadius = shutterLine.frame.width / 2
        
        // カメラ画面のサイズ変更ボタン
        resizeCaptureImage.frame = CGRect(x: 0, y: 0, width: Const.width * 0.165, height: Const.width * 0.175)
        resizeCaptureImage.layer.position = CGPoint(x: Const.width * 0.1225, y: hPosition)
        resizeCaptureImage.backgroundColor = .orange
        
        // footerbutton1
        footerButton1.frame = CGRect(x: 0, y: 0, width: Const.width * 0.165, height: Const.width * 0.175)
        footerButton1.layer.position = CGPoint(x: Const.width * 0.3075, y: hPosition)
        footerButton1.backgroundColor = .orange
        
        // footerbutton2
        footerButton2.frame = CGRect(x: 0, y: 0, width: Const.width * 0.165, height: Const.width * 0.175)
        footerButton2.layer.position = CGPoint(x: Const.width * 0.6925, y: hPosition)
        footerButton2.backgroundColor = .orange
        
        // footerbutton3
        footerButton3.frame = CGRect(x: 0, y: 0, width: Const.width * 0.165, height: Const.width * 0.175)
        footerButton3.layer.position = CGPoint(x: Const.width * 0.8775, y: hPosition)
        footerButton3.backgroundColor = .orange
        
        self.addSubview(captureImageView)
        self.addSubview(putButtonsView)
        self.addSubview(shutterLine)
        self.addSubview(shutter)
        self.addSubview(resizeCaptureImage)
        self.addSubview(footerButton1)
        self.addSubview(footerButton2)
        self.addSubview(footerButton3)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been impremented")
    }
    
}
