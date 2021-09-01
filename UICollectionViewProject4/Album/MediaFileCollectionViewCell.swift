//
//  MediaFileCollectionViewCell.swift
//  UICollectionViewProject4
//
//  Created by MAC on 24.08.2021.
//

import UIKit

class MediaFileCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MediaFileCollectionViewCell"
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var imageAccessory: UIImageView = {
        let imageAccessory = UIImageView()
        imageAccessory.contentMode = .scaleAspectFill
        imageAccessory.translatesAutoresizingMaskIntoConstraints = false
        return imageAccessory
    }()
    
    lazy var label: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var amount: UILabel = {
        var amount = UILabel()
        amount.font = .systemFont(ofSize: 20)
        amount.textColor = .lightGray
        amount.translatesAutoresizingMaskIntoConstraints = false
        return amount
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
        
        image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 35).isActive = true
        image.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        label.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 15).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100).isActive = true
        
        amount.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        amount.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 50).isActive = true
        amount.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15).isActive = true
        
        imageAccessory.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageAccessory.leadingAnchor.constraint(equalTo: amount.trailingAnchor).isActive = true
        imageAccessory.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
    }
    
    private func setupHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(label)
        contentView.addSubview(amount)
        contentView.addSubview(imageAccessory)
    }
}
