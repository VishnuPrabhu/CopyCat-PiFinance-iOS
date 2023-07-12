//
//  File.swift
//  
//
//  Created by Vishnu Prabhu Rama Chandran on 12/7/23.
//

import Foundation
import SwiftUI

public enum MainRouter {
    case splash
    case dashboard
    case signIn
    case signUp
}

public class PiRouter : ObservableObject {
    @Published public var path = NavigationPath()
    @Published public var mainScreen: MainRouter = .splash
    
    public init(path: NavigationPath = NavigationPath(), mainScreen: MainRouter = .splash) {
        self.path = path
        self.mainScreen = mainScreen
    }
}
