//
//  Feature1Service.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation

protocol Feature1Service {
    func fetchData(completion: @escaping (Feature1Model) -> ())
}
