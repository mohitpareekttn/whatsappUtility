//
//  WUTabBarController.swift
//  Whatsapp utility demo
//
//  Created by MOHIT PAREEK on 20/11/20.
//  Copyright © 2020 MOHIT PAREEK. All rights reserved.
//

import UIKit

class WUTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUpTabBar()
    }
    

    
    
    func setUpTabBar() {
        
        
        let homeVC = HomeViewController.instantiate(fromAppStoryboard: .WUHomeStoryBoard)
        let homeViewController = UINavigationController(rootViewController: homeVC!)
        homeViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        
        
        let historyVC = HistoryViewController.instantiate(fromAppStoryboard: .WUHistoryStoryBoard)
        let historyViewController = UINavigationController(rootViewController: historyVC!)
        historyViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        
        
        let customVC = CustomSavedMessagesViewController.instantiate(fromAppStoryboard: .CustomMessageStoryBoard)
        let customMessagesViewController = UINavigationController(rootViewController: customVC!)
        customMessagesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        
        let featureVC = FeaturedViewController.instantiate(fromAppStoryboard: .FeaturedStoryBoard)
        
        let featuredViewController = UINavigationController(rootViewController: featureVC!)
        featuredViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 3)
        
        let viewControllers = [homeViewController, historyViewController, customMessagesViewController, featuredViewController]
        
        tabBarController?.viewControllers = viewControllers
        
        
    }

}

