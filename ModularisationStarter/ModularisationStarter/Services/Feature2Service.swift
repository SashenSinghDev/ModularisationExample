//
//  Feature2Service.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation

protocol Feature2Service {
    func fetchData(completion: @escaping (Feature2Model) -> ())
}
