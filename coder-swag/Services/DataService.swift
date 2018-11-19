//
//  DataService.swift
//  coder-swag
//
//  Created by Meitar Basson on 08/11/2018.
//  Copyright © 2018 Meitar Basson. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService() // static means only 1 copy in memory
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devsloeps Logo Graphic Beanie", price: "$18" , imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$20", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$22", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$22", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Pink", price: "$22", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$22", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$15", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$15", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$15", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$15", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$15", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategory() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
