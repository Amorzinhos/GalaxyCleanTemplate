//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

protocol ___VARIABLE_sceneName___RouterInterface {
    
}

class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RouterInterface {
    
    //MARK: Properties
    weak var viewController: ___VARIABLE_sceneName___ViewController?
    
    static func createModule() -> ___VARIABLE_sceneName___ViewController {
        let view = ___VARIABLE_sceneName___ViewController.init(nibName: "___VARIABLE_sceneName___ViewController", bundle: Bundle(for: ___VARIABLE_sceneName___ViewController.self))
        let presenter = ___VARIABLE_sceneName___Presenter()
        presenter.viewController = view
        let interactor = ___VARIABLE_sceneName___Interactor()
        view.interactor = interactor
        interactor.presenter = presenter
        let router = ___VARIABLE_sceneName___Router()
        view.router = router
        router.viewController = view
        
        return view
    }
    
}
