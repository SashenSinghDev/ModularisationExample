//
//  Feature2DependencyContainer.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation
import UIKit

public final class Feature2DependencyContainer {

    private let feature2ViewModel: Feature2ViewModel

    public init() {
        func makeFeature2ViewModel() -> Feature2ViewModel {
            let feature2Service = Feature2ServiceImplementation()
            return Feature2ViewModel(service: feature2Service)
        }

        feature2ViewModel = makeFeature2ViewModel()
    }

    public func makeFeature2ViewController() -> UIViewController {
        let feature2ViewController = Feature2ViewController(viewModel: feature2ViewModel)
        return feature2ViewController
    }
}
