//
//  SourceEditorExtension.swift
//  SpellCheckImpl
//
//  Created by WANG Jie on 14/02/2018.
//  Copyright © 2018 jwang123. All rights reserved.
//

import Foundation
import XcodeKit
import AppKit.NSSpellChecker

class SourceEditorExtension: NSObject, XCSourceEditorExtension {
    func extensionDidFinishLaunching() {
        let path = URL(fileURLWithPath: "~/.xcodeSpellCheckIgnoreWords")
        do {
            let data = try String(contentsOfFile: path.absoluteString, encoding: .utf8)
            let myStrings = data.components(separatedBy: .newlines)
            NSSpellChecker.shared.setIgnoredWords(myStrings, inSpellDocumentWithTag: xSpellCheckDocumentTag)
        } catch {
            print(error)
        }
    }
    
    
    /*
     var commandDefinitions: [[XCSourceEditorCommandDefinitionKey: Any]] {
        // If your extension needs to return a collection of command definitions that differs from those in its Info.plist, implement this optional property getter.
        return []
    }
    */
    
}
