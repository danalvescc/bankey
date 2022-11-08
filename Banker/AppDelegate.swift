//
//  AppDelegate.swift
//  Banker
//
//  Created by Daniel  Alves Barreto on 11/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var loginViewController = LoginViewController()
    var onboardingContainerViewController = OnboardingContainerViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        loginViewController.delegate = self
        onboardingContainerViewController.delegate = self
        
        //window?.rootViewController = loginViewController
        window?.rootViewController = onboardingContainerViewController
        
        return true
    }

}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("console -> didLogin")
    }
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        print("console -> didFinishOnboarding")
    }
}
