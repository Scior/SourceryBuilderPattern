//
//  Params.swift
//  SourceryBuilderApp
//
//  Created by Suita Fujino on 2020/03/07.
//  Copyright © 2020 Suita Fujino. All rights reserved.
//

import Foundation

// sourcery: Builder
struct Params {
    let id: String?
    let name: String?
    let age: Int?
    let url: URL?
    
    var profile: String {
        return name ?? ""
    }
}

// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

extension Params {
    static var builder: Builder { return Builder() }

    final class Builder {
        private var id: String?
        private var name: String?
        private var age: Int?
        private var url: URL?

        func id(_ id: String?) -> Builder {
            self.id = id
            return self
        }

        func name(_ name: String?) -> Builder {
            self.name = name
            return self
        }

        func age(_ age: Int?) -> Builder {
            self.age = age
            return self
        }

        func url(_ url: URL?) -> Builder {
            self.url = url
            return self
        }

        func build() -> Params {
            return Params(id: id, name: name, age: age, url: url)
        }
    }
}
