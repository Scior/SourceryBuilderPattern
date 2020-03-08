# Sourcery template generating Builder pattern

[Sourcery](https://github.com/krzysztofzablocki/Sourcery) template file to reduce the cost of generating boilerplate Builder pattern codes.

## Usage

- Annotate classes or structs as follows:

```swift
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
```

- Run sourcery command like this

```sh
sourcery --sources SourceryBuilderApp/Params.swift --templates Builder.stencil --output output.swift
```

Then, the output swift file will be,

```swift
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
```
