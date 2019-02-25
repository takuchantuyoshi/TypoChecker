//
//  YAMLParser.swift
//  TypoChecker
//
//  Created by Takuya Ohsawa on 2019/02/23.
//

import Foundation

enum YAMLKey: String {
    case language
    case ignoredWords
}

struct YAMLParser {
    static func parse(_ yaml: String) throws -> [String: YAML] {
        do {
            let obj = try UniYAML.decode(yaml)
            guard let dic = obj.dictionary, !dic.isEmpty else { return [:] }
            print("\(dic)")
            return dic
        } catch UniYAMLError.error(let detail) {
            print(detail)
            return [:]
        }
    }
}
