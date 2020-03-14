//File: HomeView.swift
//Project: App Onboarding

//Created at 02.03.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

//2. Create your Home view

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 17)
                        .frame(width: 300, height: 300)
                        .foregroundColor(.orange)
                    Circle()
                        .trim(from: 0, to: 0.23)
                        .stroke(lineWidth: 17)
                        .frame(width: 300, height: 300)
                        .foregroundColor(.red)
                        .rotationEffect(.degrees(270))
                    Text("06:38")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                    .padding(.top, 135)
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 300, height: 70)
                        .foregroundColor(.orange)
                    Text("Start")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                    .padding(.bottom, 105)
            }
                .navigationBarTitle("Meditation Timer")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
