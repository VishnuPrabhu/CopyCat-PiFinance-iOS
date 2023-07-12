//
//  File.swift
//  
//
//  Created by Vishnu Prabhu Rama Chandran on 12/7/23.
//

import Foundation
import SwiftUI
import Lottie

struct LottieView : UIViewRepresentable {
    var name: String
    var completionHandler: (Bool) -> ()
    var loopMode: LottieLoopMode = .playOnce
    
    init(_ name: String, loopMode: LottieLoopMode = .playOnce, completionHandler: @escaping (Bool) -> Void) {
        self.name = name
        self.loopMode = loopMode
        self.completionHandler = completionHandler
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = LottieAnimationView()
        animationView.animation = LottieAnimation.named(name, bundle: .module)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play { isFinished in
            completionHandler(isFinished)
        }
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
