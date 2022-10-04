//
//  Feature2Service.swift
//  ModularisationVertical
//
//  Created by Sashen Singh on 2022/10/04.
//

import Foundation

protocol Feature2Service {
    func fetchData(completion: @escaping (Feature2Model) -> ())
}
