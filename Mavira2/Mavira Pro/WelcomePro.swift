//
//  WelcomePro.swift
//  Mavira2
//
//  Created by Zunaisha Eman on 30/09/2026.
//

import SwiftUI

struct WelcomePro: View {

    var body: some View {
        ZStack{

            Image(.probackground)
                .resizable()
                .ignoresSafeArea()

            VStack(spacing: 0){

                Image(.proframe)
                    .padding(.top, 21)

                Text("PAYMENT SUCCESSFUL")
                    .foregroundStyle(.charmpink)
                    .font(.custom("Manrope-Bold", size: 11))
                    .padding(.top, 30)

                Text("Welcome to Pro,")
                    .foregroundStyle(.oldburgundy)
                    .font(.custom("CormorantGaramond-Bold", size: 36))
                    .padding(.top, -2)

                Text("Ayesha!")
                    .foregroundStyle(.oldburgundy)
                    .font(.custom("CormorantGaramond-Bold", size: 36))
                    .padding(.top, -1)

                Text("Your free week starts today. Here’s what")
                    .foregroundStyle(.oldlavender)
                    .font(.custom("Manrope-Regular", size: 13.5))
                    .padding(.top, 10)

                Text("just unlocked for you:")
                    .foregroundStyle(.oldlavender)
                    .font(.custom("Manrope-Regular", size: 13.5))
                    .padding(.top, 2)

                VStack(spacing: 10){

                    WelcomeRow(icon: "calendar", title: "Unlimited AI meal plans", circleColor: .lavenderblush, iconColor: .charmpink)

                    WelcomeRow(icon: "camera", title: "Snap your plate", circleColor: .linen, iconColor: .persianorange)

                    WelcomeRow(icon: "message", title: "Chat with Mavira anytime", circleColor: .magnoliawhite, iconColor: .pastelpurple, fromAssets: true)

                    WelcomeRow(icon: "leaf", title: "Grocery lists & family portions", circleColor: .mintcream, iconColor: .shinyshamrock)

                }
                .padding(.leading, 20)
                .padding(.trailing, 19)
                .padding(.top, 15)
                .padding(.bottom, 11)
                .background(
                    RoundedRectangle(cornerRadius: 26)
                        .fill(.white)
                        .stroke(.darkvanilla, lineWidth: 1)
                )
                .padding(.top, 18)
                
                ZStack{

                    RoundedRectangle(cornerRadius: 26)
                        .fill(LinearGradient(colors: [
                            .palevioletred,
                            .charmpink
                        ], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 354, height: 56)

                    Text("Build my Pro week")
                        .foregroundStyle(.white)
                        .font(.custom("Manrope-Bold", size: 15.5))
                }
                .padding(.top, 24)

                Text("Trial ends 30 Sep · you can cancel anytime")
                    .foregroundStyle(.mountbattenpink)
                    .font(.custom("Manrope-Regular", size: 11.5))
                    .padding(.top, 16)

                Spacer()

            }.padding(.horizontal, 24)
        }
    }
}

struct WelcomeRow: View {
    let icon: String
    let title: String
    let circleColor: Color
    let iconColor: Color
    var fromAssets: Bool = false   

    var body: some View {

        HStack(spacing: 12){

            ZStack{

                Circle()
                    .fill(circleColor)
                    .frame(width: 32, height: 32)

                if fromAssets {
                    Image(icon)
                } else {
                    Image(systemName: icon)
                        .foregroundStyle(iconColor)
                        .font(.system(size: 15))
                }
            }

            Text(title)
                .foregroundStyle(.oldburgundy)
                .font(.custom("Manrope-Bold", size: 13.5))

            Spacer()

            ZStack{

                Circle()
                    .fill(.mintcream)
                    .frame(width: 18, height: 18)

                Image(systemName: "checkmark")
                    .foregroundStyle(.shinyshamrock)
                    .font(.system(size: 7, weight: .bold))
            }
        }
    }
}

#Preview {
    WelcomePro()
}
