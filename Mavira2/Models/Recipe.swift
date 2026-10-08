//
//  RecepieModel.swift
//  Mavira2
//
//  Created by Eman Tayyab on 03/10/2026.
//

import Foundation

struct GeneratedMealPlan: Codable{
    let days: [GeneratedDay]
    
}

struct GeneratedDay: Codable{
    let date: String
    let meals: [GeneratedMeal]
    
}

struct GeneratedMeal: Codable{
    let type: String
    let name: String
    let calories: Int
    let carbs: Int
    let protein: Int
    let fat: Int
    let portion: String
    let ingredients: [Ingredient]
    let time: String
    
}

struct Ingredient: Codable{
    let name: String
    let amount: Double
    let unit: String
    
}
