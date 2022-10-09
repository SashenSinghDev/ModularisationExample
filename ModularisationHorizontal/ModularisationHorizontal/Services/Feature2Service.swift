//
//  Feature2Service.swift
//  ModularisationHorizontal
//
//  Created by Sashen Singh on 2022/10/09.
//

import Foundation

protocol Feature2Service {
    func fetchData(completion: @escaping (Feature2Model) -> ())
}
