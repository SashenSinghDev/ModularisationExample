//
//  Feature1DependencyContainer.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation
import UIKit
import Feature
import Presentation

public final class Feature1DependencyContainer {

    private let feature1ViewModel: Feature1ViewModel

    public init(service: Feature1Service) {
        func makeFeature1ViewModel() -> Feature1ViewModel {
            return Feature1ViewModel(service: service)
        }

        feature1ViewModel = makeFeature1ViewModel()
    }

    public func makeFeature1ViewController() -> UIViewController {
        let feature1ViewController = Feature1ViewController(viewModel: feature1ViewModel)
        return feature1ViewController
    }
}

