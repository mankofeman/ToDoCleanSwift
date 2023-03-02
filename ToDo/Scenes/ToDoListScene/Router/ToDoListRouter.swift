//
//  ToDoListRouter.swift
//  ToDo
//
//  Created by Alex Smith on 26.02.2023.
//

final class ToDoListRouter: ToDoListRoutingLogic, ToDoListDataPassing {
	weak var viewController: ToDoListViewController?
	var dataStore: ToDoListDataStore?
	
	// MARK: Routing
	
	//func routeToSomewhere(segue: UIStoryboardSegue?) {
	//  if let segue = segue {
	//    let destinationVC = segue.destination as! SomewhereViewController
	//    var destinationDS = destinationVC.router!.dataStore!
	//    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
	//  } else {
	//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
	//    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
	//    var destinationDS = destinationVC.router!.dataStore!
	//    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
	//    navigateToSomewhere(source: viewController!, destination: destinationVC)
	//  }
	//}
	
	// MARK: Navigation
	
	//func navigateToSomewhere(source: ToDoListViewController, destination: SomewhereViewController) {
	//  source.show(destination, sender: nil)
	//}
	
	// MARK: Passing data
	
	//func passDataToSomewhere(source: ToDoListDataStore, destination: inout SomewhereDataStore) {
	//  destination.name = source.name
	//}
}