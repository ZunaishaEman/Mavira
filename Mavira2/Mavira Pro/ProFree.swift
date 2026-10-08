//
//  ProFree.swift
//  Mavira2
//
//  Created by Zunaisha Eman on 30/09/2026.
//

import SwiftUI

struct ProFree: View {

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack{

            Image(.probackground)
                .resizable()
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 0){

            
                ZStack{

                    Text("Compare plans")
                        .foregroundStyle(.oldburgundy)
                        .font(.custom("Manrope-Bold", size: 15))

                    HStack{

                        Button {
                            dismiss()
                        } label: {

                            ZStack{

                                Circle()
                                    .fill(.white)
                                    .stroke(.darkvanilla, lineWidth: 1)
                                    .frame(width: 39, height: 39)

                                Image(systemName: "arrow.left")
                                    .foregroundStyle(.eigengrau)
                                    .font(.system(size: 15, weight: .semibold))
                            }
                        }
                        .padding(.leading, 6)

                        Spacer()
                    }

                }.padding(.top, 13)

                Text("What you get")
                    .foregroundStyle(.oldburgundy)
                    .font(.custom("CormorantGaramond-Bold", size: 36))
                    .padding(.top, 10)

                Text("with Pro")
                    .foregroundStyle(.oldburgundy)
                    .font(.custom("CormorantGaramond-Bold", size: 36))
                    .padding(.top, -2)

                // Compare card
                VStack(spacing: 0){

                    // Heading row
                    HStack(spacing: 10){

                        HStack{

                            Text("FEATURE")

                            Spacer()

                            Text("FREE")
                                .frame(width: 54)
                        }
                        .foregroundStyle(.mountbattenpink)
                        .font(.custom("Manrope-Bold", size: 10))
                        .frame(width: 246)

                        VStack(spacing: 2){

                            Image(systemName: "crown.fill")
                                .font(.system(size: 11))

                            Text("PRO")
                                .font(.custom("Manrope-Bold", size: 10))

                        }
                        .foregroundStyle(.turkishrose)
                        .frame(width: 66)

                    }.frame(height: 52)

                    CompareRow(feature: "Personal meal plan", free: "1 week", pro: "tick")

                    CompareRow(feature: "Food search & logging", free: "tick", pro: "tick")

                    CompareRow(feature: "Swap meals", free: "3 / week", pro: "tick")

                    CompareRow(feature: "Chat with Mavira", free: "5 / day", pro: "Unlimited")

                    CompareRow(feature: "Snap your plate", free: "dash", pro: "tick")

                    CompareRow(feature: "Grocery list", free: "dash", pro: "tick")

                    CompareRow(feature: "Family portions", free: "dash", pro: "tick")

                    CompareRow(feature: "Progress insights", free: "Basic", pro: "tick")

                    CompareRow(feature: "Themes & app icons", free: "Rose only", pro: "tick", showLine: false)

                }
                .padding(.leading, 20)
                .padding(.trailing, 12)
                .padding(.vertical, 10)
                .background(alignment: .trailing) {

                
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(colors: [
                            .darkvanilla,
                            .lavenderblush
                        ], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 66)
                        .padding(.trailing, 12)
                        .padding(.vertical, 10)
                }
                .background(
                    RoundedRectangle(cornerRadius: 26)
                        .fill(.white)
                        .stroke(.darkvanilla, lineWidth: 1)
                )
                .padding(.top, 14)

                // Try Pro button
                ZStack{

                    RoundedRectangle(cornerRadius: 26)
                        .fill(LinearGradient(colors: [
                            .palevioletred,
                            .charmpink
                        ], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 354, height: 56)

                    Text("Try Pro free for 7 days")
                        .foregroundStyle(.white)
                        .font(.custom("Manrope-Bold", size: 15.5))
                }
                .onTapGesture {
                    // start free trial (backend baad mein lagega)
                }
                .padding(.top, 20)

                Text("Then Rs 700/month, billed yearly. Cancel anytime.")
                    .foregroundStyle(.mountbattenpink)
                    .font(.custom("Manrope-Regular", size: 11))
                    .frame(maxWidth: .infinity)
                    .padding(.top, 15)

                Spacer()

            }.padding(.horizontal, 24)
        }
    }
}

struct CompareRow: View {
    let feature: String
    let free: String
    let pro: String
    var showLine: Bool = true

    var body: some View {

        HStack(spacing: 10){

            // Feature + Free
            HStack{

                Text(feature)
                    .foregroundStyle(.oldburgundy)
                    .font(.custom("Manrope-Bold", size: 13))

                Spacer()

                ZStack{

                    if free == "tick" {

                        Circle()
                            .fill(.mintcream)
                            .frame(width: 20, height: 20)

                        Image(systemName: "checkmark")
                            .foregroundStyle(.shinyshamrock)
                            .font(.system(size: 8, weight: .bold))

                    } else if free == "dash" {

                        Rectangle()
                            .fill(.darkvanilla)
                            .frame(width: 12, height: 2)

                    } else {

                        Text(free)
                            .foregroundStyle(.mountbattenpink)
                            .font(.custom("Manrope-Bold", size: 10.5))
                    }

                }.frame(width: 54)
            }
            .frame(width: 246, height: 46)
            .overlay(alignment: .bottom) {

                if showLine {
                    Rectangle()
                        .fill(.magnoliawhite)
                        .frame(height: 1)
                }
            }

            
            ZStack{

                if pro == "tick" {

                    Circle()
                        .fill(.charmpink)
                        .frame(width: 20, height: 20)

                    Image(systemName: "checkmark")
                        .foregroundStyle(.white)
                        .font(.system(size: 8, weight: .bold))

                } else {

                    Text(pro)
                        .foregroundStyle(.turkishrose)
                        .font(.custom("Manrope-Bold", size: 10.5))
                }

            }.frame(width: 66)
        }
    }
}

#Preview {
    ProFree()
}
