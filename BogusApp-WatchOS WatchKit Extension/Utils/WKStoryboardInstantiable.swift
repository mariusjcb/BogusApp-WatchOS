//
//  WKStoryboardInstantiable.swift
//  BogusApp-WatchOS WatchKit Extension
//
//  Created by Marius Ilie on 24/01/2021.
//

import Foundation
import WatchKit

public protocol WKSInstantiableController: NSObjectProtocol {
    associatedtype T
    static var defaultFileName: String { get }
}

public extension WKSInstantiableController where Self: WKInterfaceController {
    static var defaultFileName: String {
        return NSStringFromClass(Self.self).components(separatedBy: ".").last!
    }
}
