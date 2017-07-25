import Foundation

public protocol Hom {
    associatedtype Dom
    associatedtype Codom
    
    func appliedTo(_ x: Dom) -> Codom
}

public protocol ModuleHom: Hom, Module {
    associatedtype Dom : Module
    associatedtype Codom : Module
}

