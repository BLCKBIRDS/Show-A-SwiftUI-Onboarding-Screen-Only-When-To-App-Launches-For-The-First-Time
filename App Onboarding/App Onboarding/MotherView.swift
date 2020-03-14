//File: MotherView.swift
//Project: App Onboarding

//Created at 02.03.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

import SwiftUI

struct MotherView : View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "onboardingView" {
                OnboardingView()
            } else if viewRouter.currentPage == "homeView" {
                HomeView()
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}

