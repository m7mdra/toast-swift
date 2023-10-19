//
//  ToastViewConfiguration.swift
//  Toast
//
//  Created by Thomas Maw on 12/9/2023.
//

import Foundation
import UIKit

public struct ConstrainedToastViewConfiguration: ToastViewConfiguration{
    public var minHeight: CGFloat?
    
    public var minWidth: CGFloat?
    
    public let darkBackgroundColor: UIColor
    public let lightBackgroundColor: UIColor
    
    public let titleNumberOfLines: Int
    public let subtitleNumberOfLines: Int
    
    public init(
        minHeight: CGFloat? = 58,
        minWidth: CGFloat? = 150,
        darkBackgroundColor: UIColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.00),
        lightBackgroundColor: UIColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00),
        titleNumberOfLines: Int = 1,
        subtitleNumberOfLines: Int = 1
    ) {
        self.minHeight = minHeight
        self.minWidth = minWidth
        self.darkBackgroundColor = darkBackgroundColor
        self.lightBackgroundColor = lightBackgroundColor
        self.titleNumberOfLines = titleNumberOfLines
        self.subtitleNumberOfLines = subtitleNumberOfLines
    }
}

public struct FreeFormToastViewConfiguration : ToastViewConfiguration{
    public init(
        minHeight: CGFloat? = nil,
        minWidth: CGFloat? = nil,
        darkBackgroundColor: UIColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.00),
        lightBackgroundColor: UIColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00),
        titleNumberOfLines: Int = 0,
        subtitleNumberOfLines: Int = 0
    ) {
        self.minHeight = minHeight
        self.minWidth = minWidth
        self.darkBackgroundColor = darkBackgroundColor
        self.lightBackgroundColor = lightBackgroundColor
        self.titleNumberOfLines = titleNumberOfLines
        self.subtitleNumberOfLines = subtitleNumberOfLines
    }
    public var minHeight: CGFloat? = nil
    
    public var minWidth: CGFloat? = nil
    
    public var darkBackgroundColor: UIColor
    
    public var lightBackgroundColor: UIColor
    
    public var titleNumberOfLines: Int
    
    public var subtitleNumberOfLines: Int 
    
}

public protocol ToastViewConfiguration {
    var minHeight: CGFloat? { get }
    var minWidth: CGFloat? { get }
    var darkBackgroundColor: UIColor { get }
    var lightBackgroundColor: UIColor { get }
    var titleNumberOfLines: Int { get }
    var subtitleNumberOfLines: Int { get }
    init(minHeight: CGFloat?, minWidth: CGFloat?, darkBackgroundColor: UIColor, lightBackgroundColor: UIColor, titleNumberOfLines: Int, subtitleNumberOfLines: Int)
}
