//
// WalkThroughViewModel.swift
// Xpense
//

import SwiftUI

struct WalkThrough {
    let id: Int
    let title: String
    let description: String
    let image: ImageResource
    let buttonText: String
}

final class WalkThroughViewModel: ObservableObject {
    @Published var currentStep: Int = 0
    
    var walkThroughItems: [WalkThrough] = [
        WalkThrough(
            id: 0,
            title: "Add Expense Claims Faster",
            description: "We’ve provided 3 unique ways for you to add your expense claims faster",
            image: .onBoardingFirst,
            buttonText: "Next"
        ),
        WalkThrough(
            id: 1,
            title: "Link Your Frequently Used Financial App",
            description: "You can easily link your frequently used financial app with XpenseTracker to input expense claims without leaving out any important information",
            image: .onBoardingSecond,
            buttonText: "Next"
        ),
        WalkThrough(
            id: 2,
            title: "Get Updated On Your Expense Claims",
            description: "XpenseTracker updates you on the status of your expense claims to keep you informed at all times",
            image: .onBoardingThird,
            buttonText: "Proceed to Dashboard"
        )
    ]
    
    func incrementStep() {
        if currentStep < walkThroughItems.count - 1 {
            currentStep += 1
        }
    }
    
    func getCurrentItem() -> WalkThrough {
        dump(walkThroughItems[currentStep])
        return walkThroughItems[currentStep]
    }
    
    func resetStep() {
        currentStep = 0
    }
}
