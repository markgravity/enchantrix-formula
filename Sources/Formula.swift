// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@objc public class FormulaDependency: NSObject {

    @objc public static let xcode = FormulaDependency(rawValue: 0)
    @objc public static let keylogger = FormulaDependency(rawValue: 1)

    let rawValue: Int

    init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

@objc public protocol Formula {

    @objc static var id: String { get }
    @objc static var target: String { get }
    @objc static var dependencies: [FormulaDependency] { get }

    @objc var name: String { get }
    @objc var description: String { get }
    @objc var icon: NSImage? { get }
    @objc var isPassive: Bool { get }

    @objc init(dependencies: [FormulaDependency: AnyObject])
    
    @objc func enchant()
    @objc func disenchant()
    @objc func active()
}

public extension Formula {

    var id: String { Self.id }
}
