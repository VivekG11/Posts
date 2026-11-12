//
//  UserTableViewCell.swift
//  Posts
//
//  Created by Vivek Guntuku on 11/11/26.
//

import Foundation
import UIKit

final class UserTableViewCell : UITableViewCell {
    
    static let reuseId = "UserCell"
    
     let nameLabel = UILabel()
     let emailLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpViews()
    }
    
    func setUpViews(){
        
        nameLabel.font = .boldSystemFont(ofSize: 17)
        emailLabel.font = .systemFont(ofSize: 14)
        emailLabel.textColor = .gray
        
        let stack = UIStackView(arrangedSubviews: [nameLabel, emailLabel])
        stack.axis = .vertical
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(stack)
        
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
