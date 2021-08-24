//
//  AlbumCollectionViewCell.swift
//  UICollectionViewProject4
//
//  Created by MAC on 24.08.2021.
//

import UIKit

enum SectionKind: Int, CaseIterable {
    case gridMyAlbum
    case gridGeneralAlbum
    case mediaFile
    case anotherFile
}

enum CellType {
    case albumCollectionViewCell
    case mediaFileCollectionViewCell
}

struct ModelCell {
    let typeSectionKind: SectionKind
    let type: CellType
    let image: UIImage
    let label: String
    let amount: String
    var imageAccessory: UIImage? = nil
}

extension ModelCell {
    
    static var  data = [
        
        "Section0": [ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "роза")!,
                        label: "Недавние",
                        amount: "10"),
                     
                     ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "фиалка")!,
                        label: "Инстаграм",
                        amount: "28"),
                     
                     ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "тюльпан")!,
                        label: "Viber",
                        amount: "33"),
                     
                     ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "белка")!,
                        label: "Галерея",
                        amount: "14"),
                     
                     ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "жираф")!,
                        label: "Животные",
                        amount: "10"),
                     
                     ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "тигр")!,
                        label: "Фото",
                        amount: "2"),
                     
                     ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "ежик")!,
                        label: "Telegram",
                        amount: "14"),
                     
                     ModelCell(
                        typeSectionKind: .gridMyAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "роза")!,
                        label: "Цветы",
                        amount: "1")],
        
        "Section1": [ModelCell(
                        typeSectionKind: .gridGeneralAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "tesla700")!,
                        label: "Тесла",
                        amount: "24"),
                     
                     ModelCell(
                        typeSectionKind: .gridGeneralAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "машина")!,
                        label: "Whatsap",
                        amount: "13"),
                     
                     ModelCell(
                        typeSectionKind: .gridGeneralAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "желтая тачка")!,
                        label: "VK",
                        amount: "12"),
                     
                     ModelCell(
                        typeSectionKind: .gridGeneralAlbum,
                        type: .albumCollectionViewCell,
                        image: UIImage(named: "тесла")!,
                        label: "Машина",
                        amount: "9")],
        
        "Section2": [ModelCell(
                        typeSectionKind: .mediaFile,
                        type: .mediaFileCollectionViewCell,
                        image: UIImage(systemName: "video")!,
                        label: "Видео",
                        amount: "23",
                        imageAccessory: UIImage(systemName: "chevron.right")!),
                     
                     ModelCell(
                        typeSectionKind: .mediaFile,
                        type: .mediaFileCollectionViewCell,
                        image: UIImage(systemName: "person.circle")!,
                        label: "Cелфи",
                        amount: "10",
                        imageAccessory: UIImage(systemName: "chevron.right")!),
                     
                     ModelCell(
                        typeSectionKind: .mediaFile,
                        type: .mediaFileCollectionViewCell,
                        image: UIImage(systemName: "camera.on.rectangle")!,
                        label: "Фото",
                        amount: "10",
                        imageAccessory: UIImage(systemName: "chevron.right")!),
                     
                     ModelCell(
                        typeSectionKind: .mediaFile,
                        type: .mediaFileCollectionViewCell,
                        image: UIImage(systemName: "person.crop.rectangle")!,
                        label: "Снимки экрана",
                        amount: "55",
                        imageAccessory: UIImage(systemName: "chevron.right")!)],
        
        "Section3": [ModelCell(
                        typeSectionKind: .anotherFile,
                        type: .mediaFileCollectionViewCell,
                        image: UIImage(systemName: "square.and.arrow.down")!,
                        label: "Импортированные",
                        amount: "15",
                        imageAccessory: UIImage(systemName: "chevron.right")!),
                     
                     ModelCell(
                        typeSectionKind: .anotherFile,
                        type: .mediaFileCollectionViewCell,
                        image: UIImage(systemName: "eye.slash")!,
                        label: "Скрытые",
                        amount: "34",
                        imageAccessory: UIImage(systemName: "chevron.right")!),
                     ModelCell(
                        typeSectionKind: .anotherFile,
                        type: .mediaFileCollectionViewCell,
                        image: UIImage(systemName: "trash.circle")!,
                        label: "Недавно удаленные",
                        amount: "80",
                        imageAccessory: UIImage(systemName: "chevron.right")!)]
    ]
}

class AlbumViewController: UIViewController {
    
    var data = ModelCell.data
    
    private lazy var collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.register(AlbumCollectionViewCell.self,
                                forCellWithReuseIdentifier: AlbumCollectionViewCell.identifier)
        
        collectionView.register(MediaFileCollectionViewCell.self, forCellWithReuseIdentifier: MediaFileCollectionViewCell.identifier)
        
        collectionView.register(HeaderSectionAlbum.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionAlbum.identifier)
        
        collectionView.register(HeaderSectionGeneralAlbum.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionGeneralAlbum.identifier)
        
        collectionView.register(HeaderSectionMedia.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionMedia.identifier)
        
        collectionView.register(HeaderSectionAnother.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionAnother.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = createCompositionalLayout()
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(buttonAction))
        title = "Альбомы"
        setupHierarchy()
    }
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    // MARK: Create Layout
    
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        
        let layout = UICollectionViewCompositionalLayout { (sectionIndex: Int, layoutEnviroment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            switch sectionIndex {
            case 0:
                return self.createCompositionalLayoutSectionAlbum()
            case 1:
                return self.createCompositionalLayoutSectionGeneralAlbum()
            case 2:
                return self.createCompositionalLayoutSectionMedia()
            default :
                return self.createCompositionalLayoutSectionAnother()
            }
        }
        return layout
    }
    
    // MARK: Create Section Layout
    
    private func createCompositionalLayoutSectionAlbum() -> NSCollectionLayoutSection {
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: HeaderSectionAlbum.identifier, alignment: .top)
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 50, trailing: 5)
        
        let groopSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension:.fractionalWidth(1.0))
        
        let groop = NSCollectionLayoutGroup.vertical(layoutSize: groopSize, subitem: item, count: 2)
        
        let section = NSCollectionLayoutSection(group: groop)
        section.interGroupSpacing = 12
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 5, bottom: 20, trailing: 5)
        section.orthogonalScrollingBehavior = .continuous
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }
    
    private func createCompositionalLayoutSectionGeneralAlbum() -> NSCollectionLayoutSection {
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: HeaderSectionGeneralAlbum.identifier, alignment: .top)
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 20, trailing: 5)
        
        let groopSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension:.fractionalWidth(0.5))
        
        let groop = NSCollectionLayoutGroup.vertical(layoutSize: groopSize, subitem: item, count: 1)
        
        let section = NSCollectionLayoutSection(group: groop)
        section.interGroupSpacing = 12
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 5, bottom: 50, trailing: 5)
        section.orthogonalScrollingBehavior = .continuous
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }
    
    private func createCompositionalLayoutSectionMedia() -> NSCollectionLayoutSection {
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: HeaderSectionMedia.identifier, alignment: .top)
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groopSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
        
        let groop = NSCollectionLayoutGroup.horizontal(layoutSize: groopSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: groop)
        section.contentInsets = NSDirectionalEdgeInsets(top: 7, leading: 10, bottom: 20, trailing: 0)
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }
    
    private func createCompositionalLayoutSectionAnother() -> NSCollectionLayoutSection {
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: HeaderSectionAnother.identifier, alignment: .top)
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groopSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
        
        let groop = NSCollectionLayoutGroup.horizontal(layoutSize: groopSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: groop)
        section.contentInsets = NSDirectionalEdgeInsets(top: 7, leading: 10, bottom: 0, trailing: 0)
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }
    
    @objc func buttonAction() {
        print("Активен альбом")
    }
}

// MARK: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout

extension AlbumViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        data.keys.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data["Section\(section)"]?.count ?? 0
    }
    
    // MARK: View Cell in CollectionView
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let data = data["Section\(indexPath.section)"]?[indexPath.item] else { return UICollectionViewCell() }
        switch data.type {
        case .albumCollectionViewCell:
            return setupCollectionViewAlbumCell(for: indexPath, with: data)
        case .mediaFileCollectionViewCell:
            return setupCollectionViewMediaCell(for: indexPath, with: data)
        }
    }
    
    func setupCollectionViewAlbumCell(for indexPath: IndexPath, with data: ModelCell) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumCollectionViewCell.identifier, for: indexPath) as? AlbumCollectionViewCell else { return UICollectionViewCell() }
        cell.label.text = data.label
        cell.image.image = data.image
        cell.amount.text = data.amount
        return cell
    }
    
    func setupCollectionViewMediaCell(for indexPath: IndexPath, with data: ModelCell) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MediaFileCollectionViewCell.identifier, for: indexPath) as? MediaFileCollectionViewCell else { return UICollectionViewCell() }
        cell.label.text = data.label
        cell.image.image = data.image
        cell.amount.text = data.amount
        cell.imageAccessory.image = data.imageAccessory
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let headerSectionAlbum = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionAlbum.identifier, for: indexPath) as? HeaderSectionAlbum else { return UICollectionReusableView() }
        
        guard let headerSectionGeneralAlbum = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionGeneralAlbum.identifier, for: indexPath) as? HeaderSectionGeneralAlbum else { return UICollectionReusableView() }
        
        guard let headerSectionMedia = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionMedia.identifier, for: indexPath) as? HeaderSectionMedia else { return UICollectionReusableView() }
        
        guard let headerSectionAnother = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionAnother.identifier, for: indexPath) as? HeaderSectionAnother else { return UICollectionReusableView() }
        
        guard let data = data["Section\(indexPath.section)"]?[indexPath.item] else { return UICollectionViewCell() }
        
        switch data.typeSectionKind {
        case .gridMyAlbum:
            headerSectionAlbum.setupView()
            return headerSectionAlbum
        case .gridGeneralAlbum:
            headerSectionGeneralAlbum.setupView()
            return headerSectionGeneralAlbum
        case .mediaFile:
            headerSectionMedia.setupView()
            return headerSectionMedia
        default:
            headerSectionAnother.setupView()
            return headerSectionAnother
        }
    }
}
