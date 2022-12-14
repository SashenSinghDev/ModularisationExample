//
//  Feature1ViewModel.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//
import Feature

public enum ViewStateFeature1 {
    case initial
    case loadedData(dataValue: String)
}

public final class Feature1ViewModel {
    private let service: Feature1Service

    public var stateChanged: (ViewStateFeature1) -> Void = { _ in }

    public init(service: Feature1Service) {
        self.service = service
    }

    public func loadData() {
        service.fetchData { [weak self] modelData in
            guard let self = self else { return }

            self.stateChanged(.loadedData(dataValue: modelData.data))
        }
    }
}
