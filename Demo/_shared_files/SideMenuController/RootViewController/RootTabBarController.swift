//
//  RootTabBarController.swift
//  LGSideMenuControllerDemo
//

import Foundation
import UIKit

class RootTabBarController: UITabBarController {

    private var type: DemoType?

    init(type: DemoType) {
        super.init(nibName: nil, bundle: nil)
        setup(type: type)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // For Storyboard Demo
    func setup(type: DemoType) {
        self.type = type
    }

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        struct Counter { static var count = 0 }
        Counter.count += 1
        print("RootNavigationController.viewDidLoad(), counter: \(Counter.count)")

//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: tabBar.bounds.height)], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: tabBar.bounds.height)], for: .selected)

        setColors()
    }

//    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.willTransition(to: newCollection, with: coordinator)
//
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: tabBar.bounds.height)], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: tabBar.bounds.height)], for: .selected)
//    }
//
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to: size, with: coordinator)
//
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: tabBar.bounds.height)], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: tabBar.bounds.height)], for: .selected)
//    }

    // MARK: - Rotation -

    override var shouldAutorotate : Bool {
        return true
    }

    // MARK: - Status Bar -

    override var prefersStatusBarHidden : Bool {
        return false
    }

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .default
    }

    override var preferredStatusBarUpdateAnimation : UIStatusBarAnimation {
        return .fade
    }

    // MARK: - Theme -

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        setColors()
    }

    // MARK: - Other -

    func setColors() {
//        navigationBar.barTintColor = UIColor(white: (isLightTheme() ? 1.0 : 0.0), alpha: 0.9)
//        navigationBar.titleTextAttributes = [.foregroundColor: (isLightTheme() ? UIColor.black : UIColor.white)]
    }

    // MARK: - Logging -

    deinit {
        struct Counter { static var count = 0 }
        Counter.count += 1
        print("RootNavigationController.deinit(), counter: \(Counter.count)")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        struct Counter { static var count = 0 }
        Counter.count += 1
        print("RootNavigationController.viewWillAppear(\(animated)), counter: \(Counter.count)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        struct Counter { static var count = 0 }
        Counter.count += 1
        print("RootNavigationController.viewDidAppear(\(animated)), counter: \(Counter.count)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        struct Counter { static var count = 0 }
        Counter.count += 1
        print("RootNavigationController.viewWillDisappear(\(animated)), counter: \(Counter.count)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        struct Counter { static var count = 0 }
        Counter.count += 1
        print("RootNavigationController.viewDidDisappear(\(animated)), counter: \(Counter.count)")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        struct Counter { static var count = 0 }
        Counter.count += 1
        print("RootNavigationController.viewWillLayoutSubviews(), counter: \(Counter.count)")
    }

}
