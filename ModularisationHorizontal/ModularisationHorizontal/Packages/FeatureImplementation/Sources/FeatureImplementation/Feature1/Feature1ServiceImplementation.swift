//
//  Feature1ServiceImplementation.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation

final class Feature1ServiceImplementation: Feature1Service {
    func fetchData(completion: @escaping (Feature1Model) -> ()) {
        let serviceModel = Feature1ServiceModel(data: "Feature1Data")
        let mappedFeatureModel = Feature1Model(feature1ServiceModel: serviceModel)
        completion(mappedFeatureModel)
    }
}

private extension Feature1Model {
    init(feature1ServiceModel: Feature1ServiceModel) {
        self.data = feature1ServiceModel.data
    }
}
