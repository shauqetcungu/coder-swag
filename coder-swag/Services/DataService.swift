//
//  DataService.swift
//  coder-swag
//
//  Created by Administrator on 26/12/2018.
//  Copyright © 2018 Amplitudo. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName:"shirts.png"),
        Category(title: "HOODIES", imageName:"hoodies.png"),
        Category(title: "HATS", imageName:"hats.png"),
        Category(title: "DIGITAL", imageName:"digital.png")
    ]
    
    private let hats = [
        Product(title: "Devsoples Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devsoples Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devsoples Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devsoples Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devsoples Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devsoples Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devsoples Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devsoples Hoodie Black", price: "$32", imageName: "hoodie04.png")
    
    ]
    private let shirts = [
        Product(title: "Devsoples Logo Shirt Grey", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devsoples Badge Shirt Light Red", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devsoples Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$32", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$32", imageName: "shirt05.png")
        
    ]
    
    private let digitalgoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return  shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return  digitalgoods
        
    }
}
