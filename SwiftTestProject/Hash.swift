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
    let stringToHash: String
    
    var hashedString: String {
    get {
        var resultHash = CUnsignedChar[](count: Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
        var resultHashPointer: CMutablePointer<CUnsignedChar> = &resultHash
        
        let data = stringToHash.dataUsingEncoding(NSUTF8StringEncoding)
        CC_SHA1(data.bytes, UInt32(data.length), resultHashPointer)
        
        var returnString = NSMutableString(capacity: resultHash.count * 2)
        for byte in resultHash {
            returnString.appendFormat("%02X", byte)
        }
        return returnString
    }
    }
    
    init(value: String) {
        self.stringToHash = value
    }
}