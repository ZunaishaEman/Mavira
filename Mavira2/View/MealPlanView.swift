//
//  MealPlanView.swift
//  Mavira2
//
//  Created by Eman Tayyab on 03/10/2026.
//

import SwiftUI

struct MealPlanView: View {
    @StateObject private var viewModel = MealPlanViewModel()
    var body: some View {
       
        VStack{
            
            if viewModel.isLoading {
                ProgressView()
                
            } else if let error  = viewModel.errorMessage {
                Text("Error: \(error)")
                
            } else {
                List(viewModel.days, id: \.date) { day in
                    Section(day.date) {
                        
                        ForEach(day.meals, id: \.time) { meal in
                            Text("\(meal.name) - \(meal.calories) Kcal")
                        }
                    }
                
                
                }
                
            }
            
            
        }
        .task{
            await viewModel.loadMealPlan()
            
        }
       
    }
}

#Preview {
    MealPlanView()
}
