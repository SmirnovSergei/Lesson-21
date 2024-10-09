//
//  RaccoonData.swift
//  Lesson-21
//
//  Created by Сергей Смирнов on 08.10.2024.
//

import UIKit

struct RaccoonModel {
    let imageName: String
    let number: Int
}

class RaccoonManager {
    func getRaccoons() -> [RaccoonModel] {
        return [
            RaccoonModel(imageName: "raccoon1", number: 1),
            RaccoonModel(imageName: "raccoon2", number: 2),
            RaccoonModel(imageName: "raccoon3", number: 3),
            RaccoonModel(imageName: "raccoon4", number: 4),
            RaccoonModel(imageName: "raccoon5", number: 5),
            RaccoonModel(imageName: "raccoon6", number: 6),
            RaccoonModel(imageName: "raccoon7", number: 7),
            RaccoonModel(imageName: "raccoon8", number: 8),
            RaccoonModel(imageName: "raccoon9", number: 9),
            RaccoonModel(imageName: "raccoon10", number: 10)
        ]
    }
}

class RaccoonDataManager {
    private var raccoons: [RaccoonModel] = []
    private var currentIndex = 0
    
    init(raccoons: [RaccoonModel]) {
        // Получаем массив енотов из RaccoonManager
        self.raccoons = raccoons
    }
    
    // Метод для получения текущего енота
    func getCurrentRaccoon() -> RaccoonModel {
        raccoons[currentIndex]
    }

    // Метод для переключения на следующий элемент
    func getNextRaccoon() -> RaccoonModel {
        if currentIndex < raccoons.count - 1 {
            currentIndex += 1
        }
        return getCurrentRaccoon()
    }
}

let raccoonData = RaccoonDataManager(raccoons: RaccoonManager().getRaccoons())
