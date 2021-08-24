//
//  AppDelegate.swift
//  UICollectionViewProject4
//
//  Created by MAC on 24.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = UITabBarController()
        
        let mediatecaCollectionViewController = MediatecaViewController()
        let mediatecaCollectionViewNavigationController = UINavigationController(rootViewController: mediatecaCollectionViewController)
        
        let albumCollectionViewController = AlbumViewController()
        let albumCollectionViewNavigationController = UINavigationController(rootViewController: albumCollectionViewController)
        albumCollectionViewNavigationController.navigationBar.prefersLargeTitles = true
        
        let forYouCollectionViewController = ForYouViewController()
        let forYouCollectionViewNavigationController = UINavigationController(rootViewController: forYouCollectionViewController)
        
        let searchCollectionViewController = SearchViewController()
        let searchCollectionViewNavigationController = UINavigationController(rootViewController: searchCollectionViewController)
        
        tabBarController.setViewControllers([mediatecaCollectionViewNavigationController, forYouCollectionViewNavigationController, albumCollectionViewNavigationController, searchCollectionViewNavigationController], animated: true)
        
        mediatecaCollectionViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: .init(systemName: "photo.on.rectangle"), tag: 0)
        forYouCollectionViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "suit.heart.fill"), tag: 1)
        albumCollectionViewController.tabBarItem = UITabBarItem(title: "Aльбомы", image: UIImage(systemName: "rectangle.stack"), tag: 2)
        searchCollectionViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}


