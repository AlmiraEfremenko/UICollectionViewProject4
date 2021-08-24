//
//  AlbumCollectionViewCell.swift
//  UICollectionViewProject4
//
//  Created by MAC on 24.08.2021.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "AlbumCollectionViewCell"
    
    lazy var image: UIImageView = {
        var image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 3
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var label: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var amount: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initinal
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: Layout
    
    private func setupLayout() {
        
        image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3).isActive = true
        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -3).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3).isActive = true
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 5).isActive = true
        label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -3).isActive = true
        
        amount.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3).isActive = true
        amount.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 3).isActive = true
        amount.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -3).isActive = true
    }
    
    private func setupHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(label)
        contentView.addSubview(amount)
    }
}


