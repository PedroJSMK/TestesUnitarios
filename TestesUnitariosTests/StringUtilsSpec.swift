//
//  StringUtilsSpec.swift
//  TestesUnitariosTests
//
//  Created by PJSMK on 13/02/22.
//

import XCTest
@testable import TestesUnitarios

class StringUtilsSpec: XCTestCase {
    
    func testIsValidEmail() {
        let email = "TesteUnitario"
        let value = email.isValidEmail()
        
        XCTAssertFalse(value, "Não é um email valido")
    }
    
    func testRemoveWhiteSpace() {
        let text = "Olá "
        let newText = text.removeWhitespace()
        
        XCTAssert(newText == "Olá", "Não removeu os espaços")
    }
    
    func testReplace() {
        let text = "Swift"
        let newText = text.replace(string: "S", replacement: "D")
        let newText2 = newText.replace(string: "t", replacement: "x")
        
        XCTAssert(newText == "Dwift")
        XCTAssert(newText2 == "Dwifx")
    }
    
}
