//
//  MavireView6.swift
//  MaviraAIDietitian
//
//  Created by Eman Tayyab on 22/09/2026.
//

import SwiftUI

struct MavireView6: View {
    
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
                    Image(.star)
                    
                }.padding(.top, 16)
                
                Text("YOUR SAMPLE PROFILE")
                    .foregroundStyle(.pastelpurple)
                    .font(.custom("Inter18pt-Bold", size: 12))
                    .padding(.top, 20)
                
                Text("Lets make the plan feel")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("CormorantGaramond-Bold", size: 35))
                    .padding(.top, 8)
                
                Text("personal")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("CormorantGaramond-Bold", size: 35))
                
                Text("Sex")
                    .foregroundStyle(.turkishrose)
                    .font(.custom("Manrope-Bold", size: 10.5))
                    .padding(.top, 18.5)
                
                ZStack{
                    
                 Capsule()
                        .fill(.white)
                        .frame(maxWidth: .infinity).frame(height: 44)
                    
                    HStack(spacing: 0){
                        
                        ZStack{
                            
                            if onboarding.selectedSex == "Female" {
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(.charmpink)
                                
                            }
                            
                            Text("Female")
                                .font(.custom(onboarding.selectedSex == "Female" ? "Manrope-Bold" : "Manrope-Regular", size: 13.5))
                                .foregroundStyle(onboarding.selectedSex == "Female" ? .white : .eigengrau)
                            
                        }.frame(maxWidth: .infinity).frame(height: 36)
                                .onTapGesture {
                                    onboarding.selectedSex = "Female"
                                }
                        

                        ZStack {
                            if onboarding.selectedSex == "Male" {
                                RoundedRectangle(cornerRadius: 25)
                                .fill(.charmpink) }
                            
                            
                            Text("Male")
                                .font(.custom(onboarding.selectedSex == "Male" ? "Manrope-Bold" : "Manrope-Regular", size: 13.5))
                            .foregroundStyle(onboarding.selectedSex == "Male" ? .white : .eigengrau)
                        }.frame(maxWidth: .infinity).frame(height: 36)
                        
                                .onTapGesture {
                                onboarding.selectedSex = "Male"
                                          }
                        
                        
                    }.padding(.horizontal, 4)
                    .frame(height: 50)
                    
                    
                }.padding(.top, 7)
                
                HStack(spacing: 12) {
                    StatCard(label: "AGE", unit: "years", numbers: $onboarding.age)
                    StatCard(label: "HEIGHT", unit: "cm", numbers: $onboarding.height)
                }
                .padding(.top, 14)

                HStack(spacing: 12) {
                    StatCard(label: "CURRENT WEIGHT", unit: "kg", numbers: $onboarding.currentWeight)
                    StatCard(label: "GOAL WEIGHT", unit: "kg", numbers: $onboarding.goalWeight)
                }
                .padding(.top, 11.5)
                
            Text("HOW ACTIVE ARE YOU?")
                    .foregroundStyle(.turkishrose)
                    .font(.custom("Manrope-Bold", size: 10.5))
                    .padding(.top, 19.5)
                
                ZStack{
                    
                    Capsule()
                        .fill(.white)
                        .stroke(.darkvanilla, lineWidth: 1)
                        .frame(maxWidth: .infinity).frame(height: 44)
                    
                    HStack{
                        
                        ZStack{
                            
                            if onboarding.active == "Sitting" {
                                RoundedRectangle(cornerRadius: 25)
                                .fill(.charmpink) }
                            
                            Text("Sitting")
                                .font(.custom(onboarding.active == "Sitting" ? "Manrope-Bold": "Manrope-Regular", size: 13.5 ))
                            
                                .foregroundStyle(onboarding.active == "Sitting" ? .white: .eigengrau)
                            
                            
                        }.frame(maxWidth: .infinity).frame(height: 36)
                        
                            .onTapGesture {
                                onboarding.active = "Sitting"
                            }
                        
                        ZStack{
                            
                            if onboarding.active == "Light" {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.charmpink)
                            }
                            
                            Text("Light")
                                .font(.custom(onboarding.active == "Light" ? "Manrope-Bold": "Manrope-Regular", size: 13.5))
                                .foregroundStyle(onboarding.active == "Light" ? .white: .eigengrau)
                            
                        }.frame(maxWidth: .infinity).frame(height: 36)
                        
                        .onTapGesture {
                          onboarding.active = "Light"
                        }
                        
                        ZStack{
                            
                            if onboarding.active == "Active" {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.charmpink)
                            }
                            
                        Text("Active")
                                .font(.custom(onboarding.active == "Active" ? "Manrope-Bold": "Manrope-Regular", size: 13.5))
                                .foregroundStyle(onboarding.active == "Active" ? .white: .eigengrau)
                            
                        }.frame(maxWidth: .infinity).frame(height: 36)
                        
                            .onTapGesture {
                                onboarding.active = "Active"
                            }
                        
                    }.padding(.horizontal, 4)
                }.padding(.top, 6)
                
                Text("Light:some walking, housework or light exercise.")
                    .foregroundStyle(.mountbattenpink)
                    .font(.custom("Manrope-Regular", size: 11.5))
                    .padding(.top, 9.5)
                
                ZStack{
                    
                 Capsule()
                        .fill(.lavenderblush)
                        .frame(maxWidth: .infinity).frame(height: 54)
                    
                    HStack(spacing: 12){
                        
                        Image(.emptyheart)
            
                        
                        VStack(alignment: .leading){
                            
                         Text("Pregnant or breastfeeding?")
                                .foregroundStyle(.eggplant)
                                .font(.custom("Manrope-Bold", size: 13.5))
                            
                            Text("We will skip the calorie cut to keep you safe.")
                                .foregroundStyle(.mountbattenpink)
                                .font(.custom("Manrope-Regular", size: 11))
                            
                        }
                        
                        Spacer(minLength: 8)
                        
                        Toggle("", isOn: $onboarding.isPregnantOrBreastfeeding)
                            .labelsHidden()
                            .tint(.charmpink)
                        
                    }.padding(.horizontal, 6)
                    
                }.padding(.top, 11.5)
                
                NavigationLink{
                    MealPlanView()
                } label: {
                    
                    ReusableButton(title: "Build my week", showArrow: true, fontSize: 17)
                        .padding(.top,26)
                    
                }
                
                Text("You can change these anytime in your profile.")
                    .foregroundStyle(.mountbattenpink)
                    .font(.custom("Manrope-Regular", size: 11.5))
                    .padding(.top, 22.5)
                    .padding(.bottom, 24)
                    .frame(maxWidth: .infinity)
                
            }.padding(.horizontal, 24)
                .frame(maxWidth: 500)
                .frame(maxWidth: .infinity)
            }
            
            }
    }
}

struct StatCard: View {
    let label: String
    let unit: String
    @Binding var numbers: String
    
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 18)
                .fill(.white)
                .stroke(.darkvanilla, lineWidth: 1)
                .frame(maxWidth: .infinity).frame(height: 73)
            
            VStack(alignment: .leading, spacing: 0){
                
                Text(label)
                    .font(.custom("Manrope-Bold", size: 10))
                    .foregroundStyle(.turkishrose)
                
                HStack(alignment: .firstTextBaseline, spacing: 3){
                    
                    TextField("0", text: $numbers)
                        .keyboardType(.numberPad)
                        .foregroundStyle(.eigengrau)
                        .font(.custom("Manrope-Bold", size: 20))
                        .fixedSize()
                    
                    Text(unit)
                        .foregroundStyle(.oldlavender)
                        .font(.custom("Manrope-Regular", size: 14))
                    
                    
                }
                
            }.padding(.horizontal, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    MavireView6()
        .environmentObject(OnboardingViewModel())
}
