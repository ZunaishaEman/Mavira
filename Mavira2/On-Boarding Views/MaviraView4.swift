//
//  MaviraView4.swift
//  Mavira
//
//  Created by Eman Tayyab on 17/09/2026.
//

import SwiftUI
struct MaviraView4: View {
  
    @EnvironmentObject var onboarding: OnboardingViewModel
    
    @State private var showTimePicker = false
    
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
                    Image(.graystar)
                    Image(.graystar)
                    
                }.padding(.top, 16)
                
                Text("DAILY RHYTHM ")
                    .foregroundStyle(.pastelpurple)
                    .font(.custom("Inter18pt-Bold", size: 14))
                    .padding(.top, 20)
                
                Text("When does your day")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("CormorantGaramond-Bold", size: 35))
                    .padding(.top, 8)
                
                Text("begin and end?")
                    .foregroundStyle(.eigengrau)
                    .font(.custom("CormorantGaramond-Bold", size: 35))
                
                TimeCard(icon: .sun, title: "Wake time", subitle: "Sample morning", selectedTime: $onboarding.wakeTime).padding(.top, 20)
                
                TimeCard(icon: .moon, title: "sleep time", subitle: "Sample evening", selectedTime: $onboarding.sleepTime).padding(.top, 12)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 18)
                        .foregroundStyle(.darkvanilla)
                        .frame(maxWidth: .infinity).frame(height: 78)
                    
                    VStack(alignment: .leading, spacing: 10){
                        
                        Text("✦ Meals will space automatically")
                            .foregroundStyle(.charmpink)
                            .font(.custom("Inter18pt-Bold", size: 14))
                        
                        Text("Breakfast around 8:00 . dinner before9:00")
                            .foregroundStyle(.oldlavender)
                            .font(.custom("Inter18pt-Regular", size: 14))
                        
                    }.padding(.horizontal, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }.padding(.top, 20)
              
                NavigationLink {
                    
                    MaviraView5()
                } label: {
                    
                    ReusableButton(title: "Continue", showArrow: false, fontSize: 15)
                        .padding(.top,20)
                        .padding(.bottom, 24)
                    
                }
            }.padding(.horizontal, 24)
                .frame(maxWidth: 500)
                .frame(maxWidth: .infinity)
            }
                
            }
            
        }
    }


struct TimeCard: View {
    let icon: ImageResource
    let title: String
    let subitle: String
    @Binding var selectedTime: Date
    
    @State private var showTimePicker = false
    
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 18)
                .fill(.white)
                .stroke(.lavenderblush, lineWidth: 1)
                .frame(maxWidth: .infinity).frame(height: 76)
            
            HStack{
                
               Image(icon)
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading, spacing: 6){
                    
                 Text(title)
                        .foregroundStyle(.eigengrau)
                        .font(.custom("Inter18pt-SemiBold", size: 14))
                    
                    Text(subitle)
                        .foregroundStyle(.oldlavender)
                        .font(.custom("Inter18pt-Regular", size: 13))
                    
                }
                Spacer()
                
                Button {
                    showTimePicker = true
                    
                } label: {
                    
                    Text(selectedTime.formatted(date: .omitted, time: .shortened))
                        .font(.custom("Inter18pt-SemiBold", size: 10))
                        .foregroundStyle(.charmpink)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.magnoliawhite)
                                .frame(width: 72, height: 44)
                        )
                }
            }.padding(.horizontal, 20)
            
        }.sheet(isPresented: $showTimePicker) {
            NavigationStack {
                DatePicker("",selection: $selectedTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                    .navigationTitle(title)
                    .toolbar {
                        
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") { showTimePicker = false }
                                .foregroundStyle(.charmpink)
                        }
                    }
            } .presentationDetents([.height(300)])
           
        }
    }
}
    #Preview {
        MaviraView4()
            .environmentObject(OnboardingViewModel())
    }

