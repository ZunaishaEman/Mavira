//
//  RecipeService.swift
//  Mavira2
//
//  Created by Eman Tayyab on 03/10/2026.
//

import Foundation

final class MealPlanService {
    
    private let url = URL(string: "https://vancejedbbbjrvaowbmg.supabase.co/functions/v1/meal-plan-demo")!
    
    func fetchMealPlan() async throws -> GeneratedMealPlan {
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        if let http = response as? HTTPURLResponse, http.statusCode != 200 {
            
            print("Status:", http.statusCode)
            throw URLError(.badServerResponse)
            
        }
        
        return try JSONDecoder().decode(GeneratedMealPlan.self, from: data)
        
    }
    
    
}
