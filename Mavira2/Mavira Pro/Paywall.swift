//
//  Paywall.swift
//  Mavira2
//
//  Created by Zunaisha Eman on 29/09/2026.
//

import SwiftUI

struct Paywall: View {

    @State private var selectedPlan: String = "Yearly"
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack{

            LinearGradient(colors: [
                Color(red: 0.97, green: 0.84, blue: 0.88),
                .snow,
                .lavenderblush
            ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            ScrollView(showsIndicators: false){

            VStack(spacing: 0){

                HStack{

                    Spacer()

                    Button {
                        dismiss()
                    } label: {

                        ZStack{

                            Circle()
                                .fill(.white)
                                .frame(width: 39, height: 39)

                            Image(.cross)

                        }
                    }

                }.padding(.top, 41)

                ZStack{

                    Circle()
                        .fill(.charmpink)
                        .frame(width: 84, height: 84)

                    Image(systemName: "crown.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 35))

                    // chote chote stars
                    Image(systemName: "sparkle")
                        .foregroundStyle(.white)
                        .font(.system(size: 22))
                        .offset(x: -128, y: 0)

                    Image(systemName: "sparkle")
                        .foregroundStyle(.white)
                        .font(.system(size: 9))
                        .offset(x: 116, y: -40)

                    Image(systemName: "sparkle")
                        .foregroundStyle(.white)
                        .font(.system(size: 15))
                        .offset(x: 134, y: 26)

                    Image(systemName: "sparkle")
                        .foregroundStyle(.white)
                        .font(.system(size: 10))
                        .offset(x: -102, y: 86)

                }.padding(.top, -10)

                Text("Mavira Pro")
                    .foregroundStyle(.oldburgundy)
                    .font(.custom("CormorantGaramond-Bold", size: 40))
                    .padding(.top, 1)

                Text("Everything you need to reach your goal,")
                    .foregroundStyle(.oldlavender)
                    .font(.custom("Manrope-Regular", size: 13.5))
                    .padding(.top, 5)

                Text("with food you actually love.")
                    .foregroundStyle(.oldlavender)
                    .font(.custom("Manrope-Regular", size: 13.5))
                    .padding(.top, 1)

                VStack(spacing: 14){

                    FeatureRow(icon: "calendar", title: "Unlimited AI meal plans", subtitle: "A fresh desi week, every week", circleColor: .lavenderblush, iconColor: .charmpink)

                    FeatureRow(icon: "camera", title: "Snap your plate", subtitle: "Photo logging with portion estimates", circleColor: .linen, iconColor: .persianorange)

                    FeatureRow(icon: "message", title: "Chat with Mavira anytime", subtitle: "No daily message limit", circleColor: .magnoliawhite, iconColor: .pastelpurple, fromAssets: true)

                    FeatureRow(icon: "leaf", title: "Grocery lists & family portions", subtitle: "Cook once for the whole house", circleColor: .mintcream, iconColor: .shinyshamrock)

                }.padding(.top, 24.5)

                ZStack{

                    RoundedRectangle(cornerRadius: 28)
                        .fill(.white)
                        .stroke(selectedPlan == "Yearly" ? .charmpink : .darkvanilla, lineWidth: selectedPlan == "Yearly" ? 2 : 1)
                        .frame(width: 352, height: 76)

                    HStack(spacing: 12){

                        ZStack{

                            if selectedPlan == "Yearly" {
                                Circle()
                                    .fill(.charmpink)

                                Image(systemName: "checkmark")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 10, weight: .bold))
                            } else {
                                Circle()
                                    .stroke(.darkvanilla, lineWidth: 1.5)
                            }

                        }.frame(width: 22, height: 22)

                        VStack(alignment: .leading, spacing: 4){

                            Text("Yearly")
                                .foregroundStyle(.eigengrau)
                                .font(.custom("Manrope-Bold", size: 16))

                            Text("7-day free trial, then Rs 8,400/year")
                                .foregroundStyle(.mountbattenpink)
                                .font(.custom("Manrope-Regular", size: 12))
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                        }

                        Spacer()

                        VStack(alignment: .trailing, spacing: 4){

                            Text("Rs 700")
                                .foregroundStyle(.eigengrau)
                                .font(.custom("Manrope-Bold", size: 16))

                            Text("/ month")
                                .foregroundStyle(.mountbattenpink)
                                .font(.custom("Manrope-Regular", size: 11))
                        }

                    }.padding(.horizontal, 18)
                        .frame(width: 352)

                }
                .overlay(alignment: .topTrailing) {

                    Text("BEST VALUE · SAVE 42%")
                        .foregroundStyle(.white)
                        .font(.custom("Manrope-Bold", size: 9.5))
                        .padding(.horizontal, 14)
                        .frame(width:152,height: 22)
                        .background(Capsule().fill(.charmpink))
                        .padding(.trailing, 28)
                        .offset(y: -14)
                }
                .onTapGesture {
                    selectedPlan = "Yearly"
                }
                .padding(.top, 28)

                ZStack{

                    RoundedRectangle(cornerRadius: 28)
                        .fill(.white)
                        .stroke(selectedPlan == "Monthly" ? .charmpink : .darkvanilla, lineWidth: selectedPlan == "Monthly" ? 2 : 1)
                        .frame(width: 352, height: 76)

                    HStack(spacing: 12){

                        ZStack{

                            if selectedPlan == "Monthly" {
                                Circle()
                                    .fill(.charmpink)

                                Image(systemName: "checkmark")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 10, weight: .bold))
                            } else {
                                Circle()
                                    .stroke(.darkvanilla, lineWidth: 1.5)
                            }

                        }.frame(width: 22, height: 22)

                        VStack(alignment: .leading, spacing: 4){

                            Text("Monthly")
                                .foregroundStyle(.eigengrau)
                                .font(.custom("Manrope-Bold", size: 16))

                            Text("Billed monthly, cancel anytime")
                                .foregroundStyle(.mountbattenpink)
                                .font(.custom("Manrope-Regular", size: 12))
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                        }

                        Spacer()

                        VStack(alignment: .trailing, spacing: 4){

                            Text("Rs 1,200")
                                .foregroundStyle(.eigengrau)
                                .font(.custom("Manrope-Bold", size: 16))

                            Text("/ month")
                                .foregroundStyle(.mountbattenpink)
                                .font(.custom("Manrope-Regular", size: 11))
                        }

                    }.padding(.horizontal, 18)
                        .frame(width: 352)

                }
                .onTapGesture {
                    selectedPlan = "Monthly"
                }
                .padding(.top, 13)

                HStack(spacing: 10){

                    Image(.bell)

                    Text("We’ll remind you 2 days before your trial ends")
                        .foregroundStyle(.purpletaupe)
                        .font(.custom("Manrope-SemiBold", size: 12))

                }.padding(.top, 22)

                ReusableButton(title: "Start my free week", showArrow: false, fontSize: 16)
                    .padding(.top, 24)
                
                HStack(spacing: 4){

                    Text("Restore purchase")
                    Text(".")
                    Text("Terms")
                    Text("·")
                    Text("Privacy")

                }
                .foregroundStyle(.turkishrose)
                .font(.custom("Manrope-Bold", size: 11))
                .padding(.top, 18)
                .padding(.bottom, 30)

            }.padding(.horizontal, 24)

            }
        }
    }
}

struct FeatureRow: View {
    let icon: String
    let title: String
    let subtitle: String
    let circleColor: Color
    let iconColor: Color
    var fromAssets: Bool = false   // true = Assets wali image, false = SF Symbol

    var body: some View {

        HStack(spacing: 16){

            ZStack{

                Circle()
                    .fill(circleColor)
                    .frame(width: 36, height: 36)

                if fromAssets {
                    Image(icon)
                } else {
                    Image(systemName: icon)
                        .foregroundStyle(iconColor)
                        .font(.system(size: 17))
                }
            }

            VStack(alignment: .leading, spacing: 1){

                Text(title)
                    .foregroundStyle(.oldburgundy)
                    .font(.custom("Manrope-Bold", size: 14))

                Text(subtitle)
                    .foregroundStyle(.mountbattenpink)
                    .font(.custom("Manrope-Regular", size: 11.5))
            }

            Spacer()

            Image(.tick)
                .padding(.trailing, 20)
        }
    }
}

#Preview {
    Paywall()
}
