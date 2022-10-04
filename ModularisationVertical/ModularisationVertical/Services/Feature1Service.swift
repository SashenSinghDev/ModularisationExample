//
//  Feature1Service.swift
//  ModularisationVertical
//
//  Created by Sashen Singh on 2022/10/04.
//

import Foundation

protocol Feature1Service {
    func fetchData(completion: @escaping (Feature1Model) -> ())
}
