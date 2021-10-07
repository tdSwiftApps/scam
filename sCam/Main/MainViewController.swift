//
//  MainViewController.swift
//  sCam
//
//  Created by 道関孝行 on 2021/09/21.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainModel = MainModel()
    
    override func loadView() {
        self.view = MainView(model: mainModel)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let mainView = self.view as! MainView
        
        // カメラ画面に遷移する
        mainView.cameraButton.addTarget(self, action: #selector(self.onClickCamera(_:)), for: .touchUpInside)
        // 写真編集画面に遷移する
        mainView.editPhotoButton.addTarget(self, action: #selector(self.onClickEditPhoto(_:)), for: .touchUpInside)
        // オプション画面に遷移する
        mainView.optionButton.addTarget(self, action: #selector(self.onClickOption(_:)), for: .touchUpInside)
        
    }
    
    /**
     * parameter UIButton
     * return none
     * カメラボタンのイベント
     */
    @objc func onClickCamera(_ sender: UIButton) {
        let presentingView = presentingViewController as! ViewController
        self.dismiss(animated: false, completion: {
            presentingView.transitionView(viewName: Const.cameraView)
        })
    }
    
    /**
     * parameter UIButton
     * return none
     * 写真編集ボタンのイベント
     */
    @objc func onClickEditPhoto(_ sender: UIButton) {
        print("写真編集ボタンだよ")
    }
    
    /**
     * parameter UIButton
     * return none
     * 写真編集ボタンのイベント
     */
    @objc func onClickOption(_ sender: UIButton) {
        print("オプションボタンだよ")
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
