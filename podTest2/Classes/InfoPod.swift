//
//  InfoPod.swift
//  Pods-podTest2_Tests
//
//  Created by HelioJunior on 17/04/19.
//

import Foundation


public class InfoPod {
    
    
    
    @discardableResult
    public func showVersion() -> String {
        let version = "3.0.0"
        print("==> PodTest2 InfoPod :: Version: \(version)")
        return version
    }
    
    
}
