//
//  HeaderSectionAlbum.swift
//  UICollectionViewProject4
//
//  Created by MAC on 24.08.2021.
//

import UIKit

class HeaderSectionAlbum: UICollectionReusableView {
    
    // MARK: - Property
    
    static let identifier = "HeaderSectionAlbum"
    
    lazy var labelHeader: UILabel = {
        var labelHeader = UILabel()
        labelHeader.font = .boldSystemFont(ofSize: 22)
        labelHeader.text = "Мои Альбомы"
        labelHeader.textColor = .black
        labelHeader.translatesAutoresizingMaskIntoConstraints = false
        return labelHeader
    }()
    
    lazy var labelHeaderRight: UILabel = {
        var labelHeaderRight = UILabel()
        labelHeaderRight.font = .boldSystemFont(ofSize: 22)
        labelHeaderRight.text = "Cм.все"
        labelHeaderRight.textColor = .blue
        labelHeaderRight.translatesAutoresizingMaskIntoConstraints = false
        return labelHeaderRight
    }()
    
    // MARK: - Initinal
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: Confugura
    
    func setupView() {
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: Layout
    
    private func setupLayout() {
        labelHeader.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        labelHeader.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        labelHeaderRight.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        labelHeaderRight.leadingAnchor.constraint(equalTo: labelHeader.trailingAnchor, constant: 20).isActive = true
        labelHeaderRight.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
    }
    
    private func setupHierarchy() {
        addSubview(labelHeader)
        addSubview(labelHeaderRight)
    }
}
