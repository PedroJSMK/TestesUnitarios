//
//  BeforeEachAfterEach.swift
//  TestesUnitariosTests
//
//  Created by PJSMK on 13/02/22.
//

import UIKit

import Quick

class BeforeEachAfterEach: QuickSpec {
    override func spec() {
        describe("beforeEach and afterEach behaviour") {
            beforeEach {
                print("⭐️ Describe before each")
            }
            
            context("some context") {
                beforeEach {
                    print("👉 context before each")
                }
                
                it("example 1") { print("😊 example 1") }
                
                it("example 2") { print("😊 example 2") }
                
                it("example 3") { print("😊 example 3") }
                
                afterEach {
                    print("👉 context after each")
                }
            }
            
            context("another context") {
                beforeEach {
                    print("🍎 context before each")
                }
                
                it("example 1") { print("😜 example 1") }
                
                it("example 2") { print("😜 example 2") }
                
                afterEach {
                    print("🍎 context after each")
                }
            }
            
            afterEach {
                print("⭐️ Describe after each")
            }
        }
    }
}
