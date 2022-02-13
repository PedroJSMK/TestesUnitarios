//
//  AsyncProcessSpec.swift
//  TestesUnitariosTests
//
//  Created by PJSMK on 13/02/22.
//

import Quick
import Nimble
@testable import TestesUnitarios

class AsyncProcessSpec: QuickSpec {
    
    override func spec() {
        describe("AsyncProcess") {
            context("callThatResultsInSideEffect") {
                it("Test") {
                    let asycProcess = AsyncProcess()
                    asycProcess.callThatResultsInSideEffect()
                    expect(asycProcess.name).toEventually(equal("TesteUnitario"))
                }
                
                it("Do Stuff") {
                    let asycProcess = AsyncProcess()
                    
                    waitUntil { done in
                        asycProcess.doStuff { result in
                            expect(result).to(equal("TesteUnitario"))
                            done()
                        }
                    }
                }
            }
        }
    }
}
