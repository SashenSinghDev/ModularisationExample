//
//  Feature1ServiceMock.swift
//  UIExampleApp
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation
import Feature

public final class Feature1ServiceMock: Feature1Service {
    public func fetchData(completion: @escaping (Feature1Model) -> ()) {
        let feature1ModelStub = Feature1Model(data: "ExampleFeature1Data")
        completion(feature1ModelStub)
    }
}
