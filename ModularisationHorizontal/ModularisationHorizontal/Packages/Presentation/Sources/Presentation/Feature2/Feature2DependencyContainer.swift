//
//  Feature2DependencyContainer.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation
import UIKit
import Feature

public final class Feature2DependencyContainer {

    private let feature2ViewModel: Feature2ViewModel

    public init(feature2Service: Feature2Service) {
        func makeFeature2ViewModel() -> Feature2ViewModel {
            return Feature2ViewModel(service: feature2Service)
        }

        feature2ViewModel = makeFeature2ViewModel()
    }

    public func makeFeature2ViewController() -> UIViewController {
        let feature2ViewController = Feature2ViewController(viewModel: feature2ViewModel)
        return feature2ViewController
    }
}
