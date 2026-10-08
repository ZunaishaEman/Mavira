//
//  MaviraView3.swift
//  Mavira
//
//  Created by Eman Tayyab on 17/09/2026.
//

import SwiftUI

struct MaviraView3: View {
    @EnvironmentObject var onboarding: OnboardingViewModel
    var body: some View {
        
        ZStack{
            
            Image(.background)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .ignoresSafeArea()
            
            ScrollView{
                
                VStack(alignment: .leading, spacing: 10){
                    
                    HStack(spacing: 8){
                        
                        Image(.star)
                        Image(.star)
                        Image(.graystar)
                        Image(.graystar)
                        Image(.graystar)
                        
                    }.padding(.top, 30)
                    
                    PrimaryGoal()
                    
                    Card1(selectedCard: $onboarding.selectedCard)
                    
                    Card2(selectedCard: $onboarding.selectedCard)
                    
                    Card3(selectedCard: $onboarding.selectedCard)
                    
                    NavigationLink {
                        MaviraView4()
                    } label: {
                        
                        
                        ReusableButton(title: "Continue", showArrow: false, fontSize: 15)
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

struct PrimaryGoal: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Text("PRIMARY GOAL")
                .foregroundStyle(.pastelpurple)
                .font(.system(size: 12))
                .bold()
                .padding(.top, 20)
            
            Text("What should your plan\nsupport")
                .foregroundStyle(.eigengrau)
                .font(.custom("CormorantGaramond-Medium", size: 35))
                .bold()
                .padding(.top, 8)
            
        }
    }
}

struct Card1: View {
    @Binding var selectedCard: Int
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 20)
                .fill(selectedCard == 1 ? .lavenderblush : .snow)
                .overlay(
                    selectedCard == 1 ?
                    RoundedRectangle(cornerRadius: 20).stroke(.charmpink, lineWidth: 2)
                    : nil
                )
                .frame(maxWidth: .infinity).frame(height: 123)
            
            
            VStack(alignment: .leading, spacing: 15){
                
                Image(.downarrow)
                
                Text("Steady fat loss")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("Inter18pt-SemiBold", size: 18))
                Text("Satisfying portions nd consistency")
                    .foregroundStyle(.oldlavender)
                    .font(.custom("Inter18pt-Regular", size: 14))
                
            } .padding(.horizontal, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
               
        }
        
        .overlay(alignment: .topTrailing) {
            if selectedCard == 1{
                
                ZStack{
                    
                    Circle()
                        .foregroundStyle(.frenchrose)
                        .frame(width: 28, height: 28)
                    
                    Image(systemName: "checkmark")
                        .foregroundStyle(.white)
                        .font(.system(size: 14, weight: .bold))
                }.padding(.top, 16)
                    .padding(.trailing, 16)
                
            }
        }
        .onTapGesture {
            selectedCard = 1
        }
        
    }
}

struct Card2: View {
    @Binding var selectedCard: Int
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 20)
                .fill(selectedCard == 2 ? .lavenderblush : .snow)
                .overlay(
                    selectedCard == 2 ?
                    RoundedRectangle(cornerRadius: 20).stroke(.charmpink, lineWidth: 2)
                    : nil
                )
                .frame(maxWidth: .infinity).frame(height: 117)
            
            HStack{
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Image(.current)
                    
                    Text("More daily energy")
                        .foregroundStyle(.eigengrau)
                        .font(.custom("Inter18pt-SemiBold", size: 18))
                        .bold()
                    
                    Text("Reliable fuel across the day")
                        .font(.custom("Inter18pt-Regular", size: 14))
                    
                } .padding(.horizontal, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
        }
        
        .overlay(alignment: .topTrailing) {
            if selectedCard == 2{
                
                ZStack{
                    
                    Circle()
                        .foregroundStyle(.frenchrose)
                        .frame(width: 28, height: 28)
                    
                    Image(systemName: "checkmark")
                        .foregroundStyle(.white)
                        .font(.system(size: 14, weight: .bold))
                }.padding(.top, 16)
                    .padding(.trailing, 16)
                
            }
        }
        .onTapGesture {
            selectedCard = 2
            
            
        }
        
    }
}

struct Card3: View {
    @Binding var selectedCard: Int
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 20)
                .fill(selectedCard == 3 ? .lavenderblush : .snow)
                .overlay(
                    selectedCard == 3 ?
                    RoundedRectangle(cornerRadius: 20).stroke(.charmpink, lineWidth: 2)
                    : nil
                )
                .frame(maxWidth: .infinity) .frame(height: 117)
            
            VStack(alignment: .leading, spacing: 10){
                
                Image(.doublecircle)
                
                Text("Balanced maintenance")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("Inter18pt-SemiBold", size: 18))
                
                Text("Flexible structure and variety")
                    .foregroundStyle(.oldlavender)
                    .font(.custom("Inter18pt-Regular", size: 14))
                
            } .padding(.horizontal, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }.frame(maxWidth: .infinity, alignment: .leading)
        
        .overlay(alignment: .topTrailing) {
            if selectedCard == 3{
            
                ZStack{
                    
                    Circle()
                        .foregroundStyle(.frenchrose)
                        .frame(width: 28, height: 28)
                    
                    Image(systemName: "checkmark")
                        .foregroundStyle(.white)
                        .font(.system(size: 14, weight: .bold))
                }.padding(.top, 16)
                    .padding(.horizontal, 10)
                
            }
        }
        .onTapGesture {
            selectedCard = 3
            
        }
        
    }
}

#Preview {
    MaviraView3()
        .environmentObject(OnboardingViewModel())
}
