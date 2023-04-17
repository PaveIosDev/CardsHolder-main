//
//  CardTableViewCell.swift
//  CardsHolder
//
//  Created by Павел Яковенко on 13.04.2023.
//

import Foundation
import UIKit

class CardTableViewCell: UITableViewCell {
    
    private let cardCellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Bonus Money"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let lineViewTop: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let lineViewBottom: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Подробнее", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        addSubview(cardCellView)
        cardCellView.addSubview(nameLabel)
        cardCellView.addSubview(lineViewTop)
        cardCellView.addSubview(lineViewBottom)
        cardCellView.addSubview(button)
    }
}

extension CardTableViewCell {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: cardCellView.topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            
            cardCellView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cardCellView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cardCellView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            cardCellView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            lineViewTop.heightAnchor.constraint(equalToConstant: 1),
            lineViewTop.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            lineViewTop.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            lineViewTop.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20),

            lineViewBottom.heightAnchor.constraint(equalToConstant: 1),
            lineViewBottom.topAnchor.constraint(equalTo: lineViewTop.bottomAnchor, constant: 120),
            lineViewBottom.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            lineViewBottom.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20),
            
            button.topAnchor.constraint(equalTo: lineViewBottom.bottomAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20)
            
        ])
    }
}
