//
//  XCGLogWrapper.swift
//  XCGLogger
//
//  Created by Arkadi Yoskovitz on 4/16/22.
//  Copyright © 2022 Cerebral Gardens. All rights reserved.
//
import Foundation
///
///
///
extension XCGLogger.Level
{
    init?(_ objLevel: Level) { self.init(rawValue: objLevel.rawValue) }
}
///
/// Obj-c wrapper for XCGLogger
///
@objc(XCGLogWrapper)
@objcMembers
public class XCGLogWrapper : NSObject
{
    public static var logger : XCGLogger = XCGLogger.default
    
    @objc(logLineWithlevel:functionName:fileName:lineNumber:logMessage:)
    public class func log(level: Level, functionName: String, fileName: String, lineNumber: Int, logMessage: String)
    {
        guard let wrapped = XCGLogger.Level(level) else { return }
        logger.logln(wrapped, functionName: functionName, fileName: fileName, lineNumber: lineNumber, closure: { () -> String? in
            return logMessage
        })
    }
}
