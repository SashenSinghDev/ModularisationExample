//
//  Feature1DependencyContainer.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation
import UIKit

public final class Feature1DependencyContainer {

    private let feature1ViewModel: Feature1ViewModel

    public init() {
        func makeFeature1ViewModel() -> Feature1ViewModel {
            let feature1Service = Feature1ServiceImplementation()
            return Feature1ViewModel(service: feature1Service)
        }

        feature1ViewModel = makeFeature1ViewModel()
    }

    public func makeFeature1ViewController() -> UIViewController {
        let feature1ViewController = Feature1ViewController(viewModel: feature1ViewModel)
        return feature1ViewController
    }
}

