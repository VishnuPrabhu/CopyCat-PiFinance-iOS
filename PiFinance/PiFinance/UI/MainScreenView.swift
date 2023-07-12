//
//  MainScreenView.swift
//  PiFinance
//
//  Created by Vishnu Prabhu Rama Chandran on 12/7/23.
//

import SwiftUI
import PiModel
import PiUI

struct MainScreenView: View {
    @EnvironmentObject var router: PiRouter
    
    var body: some View {
        switch router.mainScreen {
        case .splash:
            SplashView()
                .environmentObject(router)
        case .dashboard:
            DashboardView()
                .environmentObject(router)
        default:
            EmptyView()
        }
    }
}
