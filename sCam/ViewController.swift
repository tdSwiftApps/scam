//
//  ViewController.swift
//  sCam
//
//  Created by 道関孝行 on 2021/09/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let mainView = MainViewController()
        mainView.modalPresentationStyle = .overCurrentContext
        self.present(mainView, animated: false, completion: nil)
    }

    /**
     * parameter String
     * return none
     * 遷移先画面を呼び出す
     */
    func transitionView(viewName: String) {
        let transView = ViewManager.transitionView(viewName: viewName) as! UIViewController
        transView.modalPresentationStyle = .overCurrentContext
        self.present(transView, animated: false, completion: nil)
    }

}

