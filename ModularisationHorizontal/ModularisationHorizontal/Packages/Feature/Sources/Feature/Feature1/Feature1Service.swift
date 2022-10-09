//
//  Feature1Service.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation

public protocol Feature1Service {
    func fetchData(completion: @escaping (Feature1Model) -> ())
}
