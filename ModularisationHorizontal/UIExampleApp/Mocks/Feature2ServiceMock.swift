//
//  Feature2ServiceMock.swift
//  UIExampleApp
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation
import Feature

public final class Feature2ServiceMock: Feature2Service {
    public func fetchData(completion: @escaping (Feature2Model) -> ()) {
        let feature2ModelStub = Feature2Model(data: "ExampleFeature2Data")
        completion(feature2ModelStub)
    }
}
