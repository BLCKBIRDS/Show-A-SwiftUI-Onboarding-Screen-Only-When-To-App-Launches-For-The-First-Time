//
//  Subview.swift
//  App Onboarding
//
//  Created by Andreas Schultz on 10.08.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

//Create your Onboarding view, tutorial can be found at:
//https://blckbirds.com/post/how-to-create-a-onboarding-screen-in-swiftui-1/

import SwiftUI

struct Subview: View {
    
    var imageString: String
    
    var body: some View {
        Image(imageString)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .clipped()
    }
}

#if DEBUG
struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "meditating")
    }
}
#endif
