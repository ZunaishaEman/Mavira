//
//  MaviraView2.swift
//  Mavira
//
//  Created by Eman Tayyab on 16/09/2026.
//

import SwiftUI

struct MaviraView2: View {
    @EnvironmentObject var onboarding: OnboardingViewModel
    @FocusState private var isFocused: Bool
    var body: some View {
        
        ZStack{
            
            Image(.background)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0){
                    
                    HStack(spacing: 8){
                        
                        Image(.star)
                        Image(.graystar)
                        Image(.graystar)
                        Image(.graystar)
                        Image(.graystar)
                        
                    }.padding(.top, 16)
                    
                    AboutYou()
                    
                    NameField(yourName: $onboarding.yourName)
                    
                    PrivateField()
                    
                    NavigationLink {
                        MaviraView3()
                    } label: {
                        
                        ReusableButton(title: "Continue", showArrow: true, fontSize: 15)
                    }
                    .padding(.top,35)
                    .padding(.bottom, 24)
                    
                }.padding(.horizontal, 24)
                    .frame(maxWidth: 500)
                    .frame(maxWidth: .infinity)
            }
            
        }
    }
}

struct AboutYou: View {
    var body: some View {
        
        VStack(alignment: .leading,spacing: 0){
            
            Text("ABOUT YOU")
                .foregroundStyle(.charmpink)
                .font(.custom("Manrope", size: 11))
                .bold()
                .padding(.top, 45)
               
            
            Text("What should we\ncall you?")
                .foregroundStyle(.oldburgundy)
                .font(.custom("CormorantGaramond-Medium", size: 43))
                .bold()
                .padding(.top, 6)
             
            
            Text("We will use your name to make mavira feel")
                .foregroundStyle(.oldlavender)
                .font(.custom("Manrope-Regular", size: 14))
                .padding(.top, 14)
              
            
            Text("personal from the very first plan.")
                .foregroundStyle(.oldlavender)
                .font(.custom("Manrope-Regular", size: 14))
           
            
        }.frame(maxWidth: .infinity,alignment: .leading)
    }
}

struct NameField: View {
    @Binding var yourName: String
    @FocusState private var isFocused: Bool
    var body: some View {
       
        ZStack{
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .stroke(.darkvanilla, lineWidth: 1)
                .frame(maxWidth: .infinity).frame(height: 102)
            
            HStack(spacing: 0){
                
                VStack(alignment: .leading, spacing: 9){
                    
                    Text("YOUR NAME ")
                        .foregroundStyle(.turkishrose)
                        .font(.custom("Manrope-Bold", size: 11))
                        .bold()
                    
                    TextField("Name", text: $yourName)
                        .focused($isFocused)
                        .font(.custom("Manrope-Regular", size: 18))
                    
                    Rectangle()
                        .frame(maxWidth: .infinity).frame(height: 2)
                        .foregroundStyle(isFocused ? .mountbattenpink : .charmpink)
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20 )
                
                    .overlay(alignment: .topTrailing) {
                        
                        ZStack{
                            
                            Circle()
                                .foregroundStyle(.lavenderblush)
                                .frame(width: 30, height: 28)
                            
                            
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .foregroundStyle(.charmpink)
                                .frame(width: 20, height: 20)
                            
                            
                        }.offset(x: -30, y: 10)
                    }
                    }
                
        }.padding(.top, 42)
        
    }
}

struct PrivateField: View {
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.lavenderblush)
                .frame(maxWidth: .infinity).frame(height: 72)
            
            HStack(spacing: 0){
                
                Image(.heart)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 10)
                
                VStack(alignment: .leading, spacing: 4){
                    
                    Text("Your details stay private.")
                        .foregroundStyle(.eggplant)
                        .font(.custom("Manrope-Bold", size: 14))
                        .bold()
                    
                    Text("You can change them anytime in your profile.")
                        .foregroundStyle(.mountbattenpink)
                        .font(.custom("Manrope-Regular", size: 11))
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 1)
            }
            
        }.padding(.top, 31)
    }
}

#Preview {
    MaviraView2()
        .environmentObject(OnboardingViewModel())
}
