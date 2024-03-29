//
//  HomeViewController.swift
//  MVVM Pattern
//
//  Created by Din Din on 28/03/2024.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var welcomelbl: UILabel!
    
    private let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupBinders()
        viewModel.getLoggedInUser()
    }
    
    private func setupBinders() {
        viewModel.welcomeMessage.bind { [weak self] message in
            self?.welcomelbl.text = message
        }
    }

}
