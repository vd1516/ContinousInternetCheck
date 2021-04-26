//
//  Internet.swift
//  ContinousInternetCheck
//
//  Created by Vrushabh Dhameliya on 30/12/20.
//

import Foundation
import Network
import UIKit

class Internet : NSObject
{
    static let shareInstance = Internet()

    func monitor(completion : @escaping(Bool) -> Void){
        let monitor = NWPathMonitor()
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied{
                completion(true)
            }else{
                completion(false)
            }
        }
        let queue = DispatchQueue(label: "Network")
        monitor.start(queue: queue)
    }
}
