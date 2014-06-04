//
//  Hash.swift
//  SwiftTestProject
//
//  Created by Lander Brandt on 6/3/14.
//  Copyright (c) 2014 Lander Brandt. All rights reserved.
//

import Foundation

extension String {
    func hash() -> Hash {
        return Hash(value: self)
    }
}

class Hash: NSObject {
    var value: String? = nil
    
    var sha1: CUnsignedChar[]? {
    get {
        if value == nil {
            return nil
        }
        
        var resultHash = CUnsignedChar[](count: Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
        var resultHashPointer: CMutablePointer<CUnsignedChar> = &resultHash
        
        CC_SHA1(&value, UInt32(sizeof(Int)), resultHashPointer)
        return resultHash
    }
    }
    
    init(value: String) {
        self.value = value
    }
}