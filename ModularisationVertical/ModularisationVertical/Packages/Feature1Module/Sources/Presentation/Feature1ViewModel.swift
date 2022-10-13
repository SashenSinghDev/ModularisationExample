//
//  Feature1ViewModel.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation
import Feature

public final class Feature1ViewModel {
    private let service: Feature1Service

    public enum ViewStateFeature1 {
        case initial
        case loadedData(String)
    }

    public var stateChanged: (ViewStateFeature1) -> Void = { _ in }

    public init(service: Feature1Service) {
        self.service = service
    }

    public func loadData() {
        service.fetchData { [weak self] modelData in
            guard let self = self else { return }

            self.stateChanged(.loadedData(modelData.data))
        }
    }
}
