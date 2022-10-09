//
//  Feature1ViewModel.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

enum ViewStateFeature1 {
    case initial
    case loadedData(Feature1Model)
}

public final class Feature1ViewModel {
    private let service: Feature1Service

    var stateChanged: (ViewStateFeature1) -> Void = { _ in }

    init(service: Feature1Service) {
        self.service = service
    }

    public func loadData() {
        service.fetchData { [weak self] modelData in
            guard let self = self else { return }

            self.stateChanged(.loadedData(modelData))
        }
    }
}
