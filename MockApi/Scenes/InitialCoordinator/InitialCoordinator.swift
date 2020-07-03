//
//  InitialCoordinator.swift
//  MockApi
//
//  Created by Edwy Lugo on 03/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

final class InitialCoordinator: Coordinator {
   var childCoordinators: [Coordinator] = []
   private let presenter: UINavigationController

   init(presenter: UINavigationController) {
       self.presenter = presenter
   }

   func start() {
       let viewController = ListEventsViewController()
       presenter.pushViewController(viewController, animated: true)
   }
}