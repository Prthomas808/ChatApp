//
//  HomeVC.swift
//  ChatApp
//
//  Created by Pedro Thomas on 1/11/24.
//

import UIKit

class HomeVC: UIViewController {

    // MARK: Properties
   
    
    // MARK: Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavBar()
    }
    
    // MARK: Objc Functions
    
    
    // MARK: Helping Functions
    private func configureNavBar() {
        title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus.bubble"), style: .done, target: self, action: nil)
    }

}
