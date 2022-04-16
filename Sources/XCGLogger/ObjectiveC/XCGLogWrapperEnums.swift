//
//  XCGLogWrapperEnums.swift
//  XCGLogger
//
//  Created by Arkadi Yoskovitz on 4/16/22.
//  Copyright © 2022 Cerebral Gardens. All rights reserved.
//
import Foundation
///
/// Objective-C compatible Enum defining our log levels
///
@objc public enum Level: Int , CaseIterable , Comparable , CustomStringConvertible
{
    case Verbose
    case Debug
    case Info
    case Notice
    case Warning
    case Error
    case Severe
    case Alert
    case Emergency
    case None

    public var description : String {
        switch self {
        case .Verbose:
            return "Verbose"
        case .Debug:
            return "Debug"
        case .Info:
            return "Info"
        case .Notice:
            return "Notice"
        case .Warning:
            return "Warning"
        case .Error:
            return "Error"
        case .Severe:
            return "Severe"
        case .Alert:
            return "Alert"
        case .Emergency:
            return "Emergency"
        case .None:
            return "None"
        }
    }
    
    public static func < (lhs: Level, rhs: Level) -> Bool
    {
        return lhs.rawValue < rhs.rawValue
    }
}
