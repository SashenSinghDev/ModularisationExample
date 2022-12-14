//
//  Feature1ViewModel.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation

enum ViewStateFeature1 {
    case initial
    case loadedData(Feature1Model)
}

final class Feature1ViewModel {
    private let service: Feature1Service

    var stateChanged: (ViewStateFeature1) -> Void = { _ in }

    init(service: Feature1Service) {
        self.service = service
    }

    func loadData() {
        service.fetchData { [weak self] modelData in
            guard let self = self else { return }

            self.stateChanged(.loadedData(modelData))
        }
    }
}
