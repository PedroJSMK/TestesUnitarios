//
//  AccountViewModelMock.swift
//  TestesUnitariosTests
//
//  Created by PJSMK on 13/02/22.
//

import Quick
import Nimble
@testable import TestesUnitarios

class AccountViewModelMock: AccountViewModelProtocol {
    var status = ""
    
    var instructionText: String { return ""}
    
    var loginButtonHasBeenCalled = false
    
    func loginButtonTap() {
        loginButtonHasBeenCalled = true
    }
    
    func shouldRequestLocation(showAlert: () -> (), askUserPermission: () -> (), completion: () -> ()) {}
}

class AccountViewControllerSpec: QuickSpec {
    
    override func spec() {
        describe("AccountViewController") {
            var sut: AccountViewController!
            var sutMock: AccountViewModelMock!
            
            beforeEach {
                sutMock = AccountViewModelMock()
                sut = AccountViewController(nibName: "AccountViewController", bundle: nil)
                sut.viewModel = sutMock
            }
            
            context("Actions") {
                it("Login Button Tap") {
                    sut.loginButtonAction(UIButton())
                    expect(sutMock.loginButtonHasBeenCalled).to(beTrue())
                }
            }
        }
    }
}
