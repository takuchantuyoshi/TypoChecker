//
//  Reportable.swift
//  TypoChecker
//
//  Created by Takuya Ohsawa on 2019/03/09.
//

import Foundation

enum ReportType: String {
    case json
    case xcode
}

protocol Reportable {
    func output() -> String
}
