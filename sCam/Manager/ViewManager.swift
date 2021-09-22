//
//  ViewManager.swift
//  sCam
//
//  Created by 道関孝行 on 2021/09/22.
//

import Foundation
import UIKit

class ViewManager {
        
    init() {
        
    }
    
    /**
     * parameter String
     * return ViewController
     * ViewControllerを返す
     */
    static func transitionView(viewName: String) -> Any {
        let viewManager = ViewManager()
        return viewManager.viewHolder(viewName: viewName)
    }
    
    /**
     * parameter String
     * return ViewController
     * ViewControllerを返す
     */
    private func viewHolder(viewName: String) -> Any {
        var viewController: Any
        
        switch viewName {
        case Const.mainView:
            viewController = MainViewController()
        default:
            viewController = MainViewController()
        }
        
        return viewController
    }
    
}
