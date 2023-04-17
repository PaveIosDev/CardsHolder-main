//
//  CardMenegmentViewController.swift
//  CardsHolder
//
//  Created by Павел Яковенко on 13.04.2023.
//

import UIKit

class CardMenegmentViewController: UIViewController {

    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Управление картами"
        label.textColor = #colorLiteral(red: 0.1751098931, green: 0.6135229468, blue: 0.9383910298, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tableView: UITableView = {
        let view = UITableView()
        view.separatorStyle = .none
        view.register(CardTableViewCell.self, forCellReuseIdentifier: "idTableViewCell")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let idTableViewCell = "idTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        setupViews()
        setConstraints()
        setDelegates()
    }



    private func setupViews() {
        view.addSubview(mainLabel)
        view.addSubview(tableView)
    }
    
    private func setDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - setConstraints

extension CardMenegmentViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
            tableView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 5),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 1),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 1),
            
        ])
    }
}

// MARK: - UITableViewDataSource

extension CardMenegmentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idTableViewCell, for: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate

extension CardMenegmentViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        270
    }
}
