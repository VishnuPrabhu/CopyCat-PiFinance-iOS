//
//  PiFinanceApp.swift
//  PiFinance
//
//  Created by Vishnu Prabhu Rama Chandran on 10/7/23.
//

import SwiftUI
import PiModel

@main
struct PiFinanceApp: App {
    @StateObject var router: PiRouter = PiRouter()
    
    var body: some Scene {
        WindowGroup {
            MainScreenView()
                .environmentObject(router)
        }
    }
}
