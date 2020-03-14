//
//  OnboardingView.swift
//  App Onboarding
//
//  Created by Andreas Schultz on 10.08.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

//Create your Onboarding view, tutorial can be found at: 
//https://blckbirds.com/post/how-to-create-a-onboarding-screen-in-swiftui-1/

import SwiftUI

struct OnboardingView: View {
    
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "meditating")),
        UIHostingController(rootView: Subview(imageString: "skydiving")),
        UIHostingController(rootView: Subview(imageString: "sitting"))
    ]
    
    var titles = ["Take some time out", "Conquer personal hindrances", "Create a peaceful mind"]
    
    var captions =  ["Take your time out and bring awareness into your everyday life", "Meditating helps you dealing with anxiety and other psychic problems", "Regular medidation sessions creates a peaceful inner mind"]
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var currentPageIndex = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
                .frame(height: 600)
            Group {
                Text(titles[currentPageIndex])
                    .font(.title)
                Text(captions[currentPageIndex])
                .font(.subheadline)
                .foregroundColor(.gray)
                .frame(width: 300, height: 50, alignment: .leading)
                .lineLimit(nil)
            }
                .padding()
            HStack {
                PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                Spacer()
                if currentPageIndex == 2 {
                    Button(action: {
                        withAnimation {
                            self.viewRouter.currentPage = "homeView"
                        }
                    }) {
                        ButtonContent()
                    }
                } else {
                    Button(action: {
                        if self.currentPageIndex+1 == self.subviews.count {
                            self.currentPageIndex = 0
                        } else {
                            self.currentPageIndex += 1
                        }
                    }) {
                        ButtonContent()
                    }
                }
            }
                .padding()
        }
    }
}

struct ButtonContent: View {
    var body: some View {
        Image(systemName: "arrow.right")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .padding()
            .background(Color.orange)
            .cornerRadius(30)
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environmentObject(ViewRouter())
    }
}
#endif
