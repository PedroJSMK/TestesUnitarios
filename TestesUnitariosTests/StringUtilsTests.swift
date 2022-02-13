//
//  StringUtilsTests.swift
//  TestesUnitariosTests
//
//  Created by PJSMK on 13/02/22.
//

import Quick
import Nimble
@testable import TestesUnitarios

class StringUtilsTests: QuickSpec {

    override func spec() {
        describe("StringUtils") {
            context("Is Valid Email") {
                it("Valid Email") {
                    let email = "TesteUnitario@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beTrue())
                }
                
                it("Invalid Email") {
                    let email = "TesteUnitario"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beFalsy())
                }
                
                it("Invalid Email") {
                    let email = "TesteUnitario"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail) == false
                }
            }
            
            context("Remove White Space") {
                it("With white space") {
                    let text = "Olá mundo"
                    let newText = text.removeWhitespace()
                    expect(newText).to(equal("Olámundo"))
                }
                
                it("Without white space") {
                    let text = "Olámundo"
                    let newText = text.removeWhitespace()
                    expect(newText).to(equal(text))
                }
            }
        }
    }

}
