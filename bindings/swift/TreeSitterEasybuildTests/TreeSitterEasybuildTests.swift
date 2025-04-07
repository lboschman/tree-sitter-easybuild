import XCTest
import SwiftTreeSitter
import TreeSitterEasybuild

final class TreeSitterEasybuildTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_easybuild())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Easybuild grammar")
    }
}
