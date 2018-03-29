//
//  GeometricCell.swift
//  SwiftyTopology
//
//  Created by Taketo Sano on 2018/03/10.
//  Copyright © 2018年 Taketo Sano. All rights reserved.
//

import Foundation
import SwiftyAlgebra

public protocol GeometricCell: FreeModuleBase {
    var dim: Int { get }
    func boundary<R: Ring>(_ type: R.Type) -> FreeModule<Self, R>
}

public extension GeometricCell {
    public var degree: Int { return dim }
}
