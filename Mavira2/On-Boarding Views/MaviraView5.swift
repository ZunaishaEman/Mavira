//
//  MaviraView5.swift
//  Mavira
//
//  Created by Eman Tayyab on 21/09/2026.
//

import SwiftUI

struct MaviraView5: View {
    @EnvironmentObject var onboarding: OnboardingViewModel
    var body: some View {
        
        ZStack{
            
            Image(.background)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .ignoresSafeArea()
            
            ScrollView {
            
            VStack(alignment: .leading, spacing: 0){
                
                HStack{
                    
                    Image(.star)
                    Image(.star)
                    Image(.star)
                    Image(.star)
                    Image(.graystar)
                    
                }.padding(.top, 16)
                
                Text("FOOD PREFERENCES")
                    .foregroundStyle(.pastelpurple)
                    .font(.custom("Inter18pt-Bold", size: 12))
                    .padding(.top, 20)
                
                Text("Keep the food familiar.")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("CormorantGaramond-Bold", size: 35))
                    .padding(.top, 8)
                
                Text("Choose a few preferences for this sample.")
                    .foregroundStyle(.oldlavender)
                    .font(.custom("Inter18pt-Regular", size: 16))
                    .padding(.top, 8)
                
                Text("Cuisine")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("Inter18pt-SemiBold", size: 14))
                    .padding(.top, 20)
                
                HStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.selectedCuisine == ("Pakistani") ? .darkvanilla : .white)
                            .stroke(onboarding.selectedCuisine == ("Pakistani") ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 87, height: 37)
                        
                        
                        Text("Pakistani")
                            .foregroundStyle(onboarding.selectedCuisine == ("Pakistani") ? .charmpink : .eigengrau)
                            .font(onboarding.selectedCuisine == ("Pakistani") ? .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    .onTapGesture {
                        onboarding.selectedCuisine = "Pakistani"
                    }
                    
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.selectedCuisine == "Indian" ? .darkvanilla : .white)
                            .stroke(onboarding.selectedCuisine == "Indian" ? .frenchrose :
                                    .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 64, height: 37)
                        
                        
                        Text("Indian")
                            .foregroundStyle(onboarding.selectedCuisine == "Indian" ? .charmpink : .eigengrau)
                            .font(.custom("Inter18pt-Regular", size: 14))
                    }
                    
                    .onTapGesture {
                        onboarding.selectedCuisine = "Indian"
                    }
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.selectedCuisine == "Mediterranean" ? .darkvanilla : .white)
                            .stroke(onboarding.selectedCuisine == "Mediterranean" ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 121, height: 37)
                        
                        
                        Text("Mediterranean")
                            .foregroundStyle(onboarding.selectedCuisine == "Mediterranean" ? .charmpink : .eigengrau)
                            .font(onboarding.selectedCuisine == "Mediterranean" ?
                                .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    
                    .onTapGesture {
                        onboarding.selectedCuisine = "Mediterranean"
                    }
                    
                    
                }.padding(.top, 8)
                
                Text("Eating Style")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("Inter18pt-SemiBold", size: 14))
                    .padding(.top, 16)
                
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.selectedEatingStyle.contains("Halal") ? .darkvanilla : .white)
                            .stroke(onboarding.selectedEatingStyle.contains("Halal") ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 59, height: 37)
                        
                        
                        Text("Halal")
                            .foregroundStyle(onboarding.selectedEatingStyle.contains("Halal") ? .charmpink : .eigengrau)
                            .font(onboarding.selectedEatingStyle.contains("Halal") ? .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    .onTapGesture {
                      if  onboarding.selectedEatingStyle.contains("Halal") {
                            onboarding.selectedEatingStyle.remove("Halal")
                            
                        } else {
                            
                            onboarding.selectedEatingStyle.insert("Halal")
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.selectedEatingStyle.contains("Higher protien") ? .darkvanilla : .white)
                            .stroke(onboarding.selectedEatingStyle.contains("Higher protien") ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 123, height: 37)
                        
                        
                        Text("Higher protien")
                            .foregroundStyle(onboarding.selectedEatingStyle.contains("Higher protien") ? .charmpink : .eigengrau)
                            .font(onboarding.selectedEatingStyle.contains("Higher protien") ? .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    .onTapGesture {
                       if onboarding.selectedEatingStyle.contains("Higher protien") {
                            onboarding.selectedEatingStyle.remove("Higher protien")
                            
                        } else {
                            
                            onboarding.selectedEatingStyle.insert("Higher protien")
                            
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.selectedEatingStyle.contains("Vegetarian") ? .darkvanilla : .white)
                            .stroke(onboarding.selectedEatingStyle.contains("Vegetarian") ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 96, height: 37)
                        
                        
                        Text("Vegetarian")
                            .foregroundStyle(onboarding.selectedEatingStyle.contains("Vegetarian") ? .charmpink : .eigengrau)
                            .font(onboarding.selectedEatingStyle.contains("Vegetarian") ? .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    .onTapGesture {
                      if  onboarding.selectedEatingStyle.contains("Vegetarian") {
                            onboarding.selectedEatingStyle.remove("Vegetarian")
                            
                        } else {
                            
                            onboarding.selectedEatingStyle.insert("Vegetarian")
                        }
                    }
                   
                }.padding(.top, 8)
                
                Text("Avoid")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("Inter18pt-SemiBold", size: 14))
                    .padding(.top, 16)
                
                HStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.avoid.contains("Beef") ? .darkvanilla : .white)
                            .stroke(onboarding.avoid.contains("Beef") ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 56, height: 37)
                        
                        
                        Text("Beef")
                            .foregroundStyle(onboarding.avoid.contains("Beef") ? .charmpink : .eigengrau)
                            .font(onboarding.avoid.contains("Beef") ? .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    .onTapGesture {
                       if onboarding.avoid.contains("Beef") {
                            onboarding.avoid.remove("Beef")
                            
                        } else {
                            
                            onboarding.avoid.insert("Beef")
                            
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.avoid.contains("Seafood") ? .darkvanilla : .white)
                            .stroke(onboarding.avoid.contains("Seafood") ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 80, height: 37)
                        
                        
                        Text("Seafood")
                            .foregroundStyle(onboarding.avoid.contains("Seafood") ? .charmpink : .eigengrau)
                            .font(onboarding.avoid.contains("Seafood") ? .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    .onTapGesture {
                       if onboarding.avoid.contains("Seafood") {
                            onboarding.avoid.remove("Seafood")
                            
                        } else {
                            
                            onboarding.avoid.insert("Seafood")
                            
                        }
                    }
                   
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .fill(onboarding.avoid.contains("Very spicy") ? .darkvanilla : .white)
                            .stroke(onboarding.avoid.contains("Very spicy") ? .frenchrose : .black.opacity(0.1), lineWidth: 1)
                            .frame(width: 93, height: 37)
                        
                        
                        Text("Very spicy")
                            .foregroundStyle(onboarding.avoid.contains("Very spicy") ? .charmpink : .eigengrau)
                            .font(onboarding.avoid.contains("Very spicy") ? .custom("Inter18pt-Bold", size: 14) :
                                    .custom("Inter18pt-Regular", size: 14))
                    }
                    .onTapGesture {
                       if onboarding.avoid.contains("Very spicy") {
                            onboarding.avoid.remove("Very spicy")
                            
                        } else {
                            
                            onboarding.avoid.insert("Very spicy")
                            
                        }
                    }
                  
                }.padding(.top, 8)
                
                NavigationLink {
                    MavireView6()
                } label: {
                    ReusableButton(title: "Build my sample week", showArrow: false, fontSize: 16)
                }
                    .padding(.top,20)
                    .padding(.bottom, 24)

            }.padding(.horizontal, 24)
                .frame(maxWidth: 500)
                .frame(maxWidth: .infinity)
            }
            
        }
    }
}

#Preview {
    MaviraView5()
        .environmentObject(OnboardingViewModel())
}
