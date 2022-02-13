//
//  AsyncProcess.swift
//  TestesUnitarios
//
//  Created by PJSMK on 13/02/22.
//

import UIKit

class AsyncProcess {
    var name = ""
    
    func doStuff(_ completion: @escaping (String) -> ()) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            completion("Curso")
        }
    }
    
    func callThatResultsInSideEffect() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.name = "Curso"
        }
    }
}
