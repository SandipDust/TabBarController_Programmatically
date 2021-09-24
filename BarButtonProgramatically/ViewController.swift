//
//  ViewController.swift
//  BarButtonProgramatically
//
//  Created by Sandip Das on 24/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    
    @objc func buttonPressed(){
        //create and present TabBarVC along with Navigation controller
        
        let tabBarVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        
        //setting up titles so that they show when tabVarVc is presented
        vc1.title = "Home"
        vc2.title = "Modes"
        vc3.title = "Contact"
        vc4.title = "About"
        vc5.title = "Settings"
        
    
     //Setting the viewControllers to tabBar
        tabBarVC.setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        //setting images to tabBar
        let tabBarImages = ["house","bell","person.circle","star","gear"]
        for x in 0..<tabBarImages.count  {
            items[x].image = UIImage(systemName: tabBarImages[x])
        }
        
        //presenting the tabBar
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
    }


}

