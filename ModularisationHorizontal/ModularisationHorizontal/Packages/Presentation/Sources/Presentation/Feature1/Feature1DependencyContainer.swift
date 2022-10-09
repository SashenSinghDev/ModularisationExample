//
//  Feature1DependencyContainer.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation
import UIKit
import Feature

public final class Feature1DependencyContainer {

    private let feature1ViewModel: Feature1ViewModel

    public init(feature1Service: Feature1Service) {
        func makeFeature1ViewModel() -> Feature1ViewModel {
            return Feature1ViewModel(service: feature1Service)
        }

        feature1ViewModel = makeFeature1ViewModel()
    }

    public func makeFeature1ViewController() -> UIViewController {
        let feature1ViewController = Feature1ViewController(viewModel: feature1ViewModel)
        return feature1ViewController
    }
}
