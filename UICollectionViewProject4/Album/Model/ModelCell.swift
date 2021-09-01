//
//  ModelCell.swift
//  UICollectionViewProject4
//
//  Created by MAC on 01.09.2021.
//

import UIKit

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
