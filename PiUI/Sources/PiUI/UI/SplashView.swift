//
//  SwiftUIView.swift
//  
//
//  Created by Vishnu Prabhu Rama Chandran on 12/7/23.
//

import SwiftUI
import PiModel

public struct SplashView: View {
    @EnvironmentObject var router: PiRouter
    
    public init() {}
    
    public var body: some View {
        LottieView("lottie_splash", loopMode: .repeatBackwards(1), completionHandler: { isFinished in
            router.mainScreen = .dashboard
        })
        .frame(width: 250, height: 250, alignment: .center)
    }
}
