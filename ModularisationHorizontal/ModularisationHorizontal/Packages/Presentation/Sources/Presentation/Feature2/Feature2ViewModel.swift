//
//  Feature2ViewModel.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation

enum ViewStateFeature2 {
    case initial
    case loadedData(Feature2Model)
}

final class Feature2ViewModel {
    private let service: Feature2Service

    var stateChanged: (ViewStateFeature2) -> Void = { _ in }

    init(service: Feature2Service) {
        self.service = service
    }

    func loadData() {
        service.fetchData { [weak self] modelData in
            guard let self = self else { return }

            self.stateChanged(.loadedData(modelData))
        }
    }
}
