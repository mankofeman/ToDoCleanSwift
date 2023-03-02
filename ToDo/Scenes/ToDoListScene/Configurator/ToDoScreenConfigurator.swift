//
//  ToDoScreenConfigurator.swift
//  ToDo
//
//  Created by Alex Smith on 26.02.2023.
//

import Foundation

final class DefaultToDoSceneConfigurator: ToDoScreenConfigurator {
	private var sceneFactory: SceneFactory
	
	init(sceneFactory: SceneFactory) {
		self.sceneFactory = sceneFactory
	}
	
	func configured(_ viewController: ToDoListViewController) -> ToDoListViewController {
		sceneFactory.toDoSceneConfigurator = self
		let taskManager = OrderedTaskManager(taskManager: TaskManager())
		let repository: ITaskRepository = TaskRepositoryStub()
		taskManager.addTasks(tasks: repository.getTasks())
		let presenter = ToDoListPresenter()
		let interactor = ToDoListInteractor(presenter: presenter, sectionManager: TaskManagerSectionsAdapter(taskManager: taskManager))
		let router = ToDoListRouter() //sceneFactory: sceneFactory)
		router.viewController = viewController
		presenter.viewController = viewController
		interactor.presenter = presenter
		viewController.interactor = interactor
		viewController.router = router
		return viewController
	}
}