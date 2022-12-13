//
//  TabbarController.swift
//  op.gg
//
//  Created by June on 2022/12/10.
//
//import UIKit
//
//class TabBarController: UITabBarController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let vc1 = MainViewController()
////        let vc2  = UINavigationController(rootViewController: LoginViewController())
////        vc2.isNavigationBarHidden = true // 네비게이션바가 사라지는지 여부
//        self.setViewControllers([vc1,/*vc*/], animated: true)
//
//    }
//}


import UIKit

class TabBarViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        let homeVC = MainViewController()
        let searchVC = ChampionsView()
//        let libraryVC = LibraryViewController()
//
        //각 tab bar의 viewcontroller 타이틀 설정
        
//        homeVC.title = "Home"
        searchVC.title = "Search"
//        libraryVC.title = "Library"
//
        homeVC.tabBarItem.image = UIImage.init(systemName: "house")
        searchVC.tabBarItem.image = UIImage.init(systemName: "magnifyingglass")
//        libraryVC.tabBarItem.image = UIImage.init(systemName: "book")
//        탭바 컨트롤러 크기
        self.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0);
        
        // 위에 타이틀 text를 항상 크게 보이게 설정
//        homeVC.navigationItem.largeTitleDisplayMode = .always
//        searchVC.navigationItem.largeTitleDisplayMode = .always
//        libraryVC.navigationItem.largeTitleDisplayMode = .always
//
        // navigationController의 root view 설정
//        let navigationHome = UINavigationController(rootViewController: homeVC)
//        let navigationSearch = UINavigationController(rootViewController: searchVC)
//        let navigationLibrary = UINavigationController(rootViewController: libraryVC)
//
    
//        navigationHome.navigationBar.prefersLargeTitles = true
//        navigationSearch.navigationBar.prefersLargeTitles = true
//        navigationLibrary.navigationBar.prefersLargeTitles = true
//
        setViewControllers([homeVC,searchVC /*navigationLibrary*/], animated: false)
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
