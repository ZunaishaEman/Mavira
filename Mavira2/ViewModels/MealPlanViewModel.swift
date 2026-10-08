//
//  MealPlan.swift
//  Mavira2
//
//  Created by Eman Tayyab on 03/10/2026.
//

import Foundation
import Combine
@MainActor
final class MealPlanViewModel: ObservableObject {
    
    @Published var days: [GeneratedDay] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private let service = MealPlanService()
    
    func loadMealPlan() async {
        
        isLoading = true
        errorMessage = nil
        
        do {
            
            let plan = try await service.fetchMealPlan()
            days = plan.days
        } catch {
            
            errorMessage = error.localizedDescription
            print("Error:", error)
            
        }
        
        isLoading = false
        
    }
    
}


