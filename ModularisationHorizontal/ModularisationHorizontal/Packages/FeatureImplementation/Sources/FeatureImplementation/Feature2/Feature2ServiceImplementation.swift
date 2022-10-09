//
//  Feature2ServiceImplementation.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation

final class Feature2ServiceImplementation: Feature2Service {
    func fetchData(completion: @escaping (Feature2Model) -> ()) {
        let serviceModel = Feature2ServiceModel(data: "Feature2Data")
        let mappedFeatureModel = Feature2Model(feature2ServiceModel: serviceModel)

        completion(mappedFeatureModel)
    }
}

private extension Feature2Model {
    init(feature2ServiceModel: Feature2ServiceModel) {
        self.data = feature2ServiceModel.data
    }
}
