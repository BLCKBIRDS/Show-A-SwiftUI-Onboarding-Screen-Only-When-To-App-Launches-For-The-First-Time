//File: ViewRouter.swift
//Project: App Onboarding

//Created at 14.03.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {

    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "onboardingView"
        } else {
            currentPage = "homeView"
        }
    }
    
    @Published var currentPage: String
    
}

