//
//  YAMLParser.swift
//  TypoChecker
//
//  Created by Takuya Ohsawa on 2019/02/23.
//

import Foundation
import UniYAML

enum YAMLKey: String {
    case language
    case ignoredWords
    case excluded
    case report
}

struct YAMLParser {
    static func parse(_ yaml: String) throws -> [String: YAML] {
        do {
            let obj = try UniYAML.decode(yaml)
            guard let dic = obj.dictionary, !dic.isEmpty else { return [:] }
            return dic
        } catch UniYAMLError.error(_) {
            return [:]
        }
    }
}
