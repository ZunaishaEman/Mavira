//
//  MaviraView1.swift
//  Mavira
//
//  Created by Eman Tayyab on 16/09/2026.
//

import SwiftUI

struct MaviraView1: View {
    @StateObject private var onboarding = OnboardingViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                
                Image(.background)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .ignoresSafeArea()
                
                VStack(spacing: 0){
                    
                    Image(.fullSparkle)
                        .padding(.top, 40)

                    Spacer()

                    VStack(spacing: 0){
                        Text("Food that fits")

                        Text("your real life")

                    }
                    .font(.custom("CormorantGaramond-Medium", size: 44))
                    .bold()
                    
                
                    VStack(spacing: 0){
                        
                        Text("Personal meal plans, familiar food,")
                        
                        Text("and an AI nutrition companion.")
                        
                        
                    }
                    .foregroundStyle(.oldlavender)
                    .font(.custom("DMSans-Regular", size: 15))
                    .padding(.top,21)

                    Spacer()
                    Spacer()

                    NavigationLink{
                        MaviraView2()
                    } label : {
                        ReusableButton(title: "Get Started", showArrow: true, fontSize: 16)
                    }
        
                    
                    VStack(spacing: 0){
                        
                        Text("A PRODUCT OF")
                            .foregroundStyle(.mountbattenpink)
                            .font(.custom("DMSans", size: 10))
                        
                        
                        Text("Mavira Technologies")
                            .foregroundStyle(.purpletaupe)
                            .font(.custom("DMSans", size: 15))
                        
                        
                    }.padding(.bottom, 16)
                        .padding(.top,28)
                        .bold()
                }.padding(.horizontal, 24)
                .frame(maxWidth: 500)
                    .frame(maxWidth: .infinity)
            }
        }.environmentObject(onboarding)
       
    }
}

struct ReusableButton: View {
    
   var title: String = ""
    var showArrow: Bool = false
    var fontSize: CGFloat
   
    var body: some View {
        
       
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 24)
                    .foregroundStyle(.charmpink)
                    .frame(maxWidth: .infinity).frame(height: 58)
                
                HStack{
                    Spacer()
                    Text(title)
                        .foregroundStyle(.white)
                        .font(.custom("Inter18pt-Bold", size: fontSize))
                        .bold()
                    Spacer()
                }
                    
                    HStack{
                    Spacer()
                        if showArrow {
                            Image(.arrow)
                                .padding(.trailing, 50)
                            
                        }
                    }
            }.frame(maxWidth: .infinity,alignment: .leading)
            }
        }
    
#Preview {
    MaviraView1()
   
}
