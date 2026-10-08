//
//  OnboardingViewModel.swift
//  Mavira2
//
//  Created by Eman Tayyab on 05/10/2026.
//

import Foundation
import Combine

@MainActor
final class OnboardingViewModel: ObservableObject {
    
   // View2
    @Published var yourName: String = ""
    
   // View3
    @Published var selectedCard: Int = 0
    
    // View4
    @Published var wakeTime: Date = Calendar.current.date(bySettingHour: 7, minute: 0, second: 0, of:Date()) ?? Date()
    
    @Published var sleepTime: Date = Calendar.current.date(bySettingHour: 23, minute: 30, second: 0, of: Date()) ?? Date()
    
   // View5
    @Published var selectedCuisine: String? = nil
    @Published var selectedEatingStyle: Set<String> = []
    @Published var avoid: Set<String> = []
    
    // View6
    @Published var selectedSex: String? = nil
    @Published var age: String = ""
    @Published var height: String = ""
    @Published var currentWeight: String = ""
    @Published var goalWeight: String = ""
    @Published var active: String? = nil
    @Published var isPregnantOrBreastfeeding: Bool = false
    
    
    
}
