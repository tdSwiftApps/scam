//
//  MainView.swift
//  sCam
//
//  Created by 道関孝行 on 2021/09/21.
//

import Foundation
import UIKit

class MainView: UIView {
    
    // カメラボタン
    var cameraButton: UIButton!
    // 写真編集ボタン
    var editPhotoButton: UIButton!
    //オプションボタン
    var optionButton: UIButton!
    
    required init(model: MainModel) {
        
        // カメラボタン
        cameraButton = UIButton()
        // 写真編集ボタン
        editPhotoButton = UIButton()
        //オプションボタン
        optionButton = UIButton()
        
        super.init(frame: CGRect(x: 0, y: 0, width: Const.width, height: Const.height))
        
        // カメラボタン
        cameraButton.frame = CGRect(x: 0, y: 0, width: self.frame.width * 0.8, height: self.frame.height * 0.1)
        cameraButton.layer.position = CGPoint(x: self.frame.width / 2, y: self.frame.height * 0.3)
        cameraButton.setTitle("camera", for: .normal)
        cameraButton.setTitleColor(UIColor.white, for: .normal)
        cameraButton.backgroundColor = UIColor.blue
        cameraButton.layer.cornerRadius = cameraButton.frame.width * 0.05
        
        // 写真編集ボタン
        editPhotoButton.frame = CGRect(x: 0, y: 0, width: self.frame.width * 0.8, height: self.frame.height * 0.1)
        editPhotoButton.layer.position = CGPoint(x: self.frame.width / 2, y: self.frame.height * 0.5)
        editPhotoButton.setTitle("photo", for: .normal)
        editPhotoButton.setTitleColor(UIColor.white, for: .normal)
        editPhotoButton.backgroundColor = UIColor.blue
        editPhotoButton.layer.cornerRadius = cameraButton.frame.width * 0.05
        
        // オプションボタン
        optionButton.frame = CGRect(x: 0, y: 0, width: self.frame.width * 0.8, height: self.frame.height * 0.1)
        optionButton.layer.position = CGPoint(x: self.frame.width / 2, y: self.frame.height * 0.7)
        optionButton.setTitle("photo", for: .normal)
        optionButton.setTitleColor(UIColor.white, for: .normal)
        optionButton.backgroundColor = UIColor.blue
        optionButton.layer.cornerRadius = cameraButton.frame.width * 0.05
        
        // Viewにaddする
        self.addSubview(cameraButton)
        self.addSubview(editPhotoButton)
        self.addSubview(optionButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
