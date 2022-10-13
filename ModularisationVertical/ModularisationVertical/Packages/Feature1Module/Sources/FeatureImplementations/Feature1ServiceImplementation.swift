//
//  Feature1ServiceImplementation.swift
//  ModularisationVertical
//
//  Created by Sashen Singh on 2022/10/04.
//

import Foundation
import Feature

public final class Feature1ServiceImplementation: Feature1Service {
    public init() {}
    
    public func fetchData(completion: @escaping (Feature1Model) -> ()) {
        let serviceModel = Feature1ServiceModel(data: "Feature1Data")
        let mappedFeatureModel = Feature1Model(feature1ServiceModel: serviceModel)
        completion(mappedFeatureModel)
    }
}

private extension Feature1Model {
    init(feature1ServiceModel: Feature1ServiceModel) {
        self.init(data: feature1ServiceModel.data)
    }
}
