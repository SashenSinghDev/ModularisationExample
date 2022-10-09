//
//  Feature2ViewModel.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation
import Feature

public enum ViewStateFeature2 {
    case initial
    case loadedData(Feature2Model)
}

public final class Feature2ViewModel {
    private let service: Feature2Service

    public var stateChanged: (ViewStateFeature2) -> Void = { _ in }

    public init(service: Feature2Service) {
        self.service = service
    }

    public func loadData() {
        service.fetchData { [weak self] modelData in
            guard let self = self else { return }

            self.stateChanged(.loadedData(modelData))
        }
    }
}
