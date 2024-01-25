//
//  LoginUnitTest.swift
//  CIdemoProjectTests
//
//  Created by Priya Sharma on 24/01/24.
//

import XCTest
@testable import CIdemoProject

final class LoginUnitTest: XCTestCase {
    
    var obj: LoginViewModel!
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // Initialise object
        obj = LoginViewModel()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        // Object Cleanup
        obj = nil
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testPasswordFailValidation() {
        // Given
        // When
        let isValidNumber = obj.isPasswordValid(_pass: "xyz")
        // Then
        XCTAssertFalse(isValidNumber, "Password is not valid")
    }
    
    func testPasswordSuccessValidation() {
        // Given
        // When
        let isValidNumber = obj.isPasswordValid(_pass: "Test@1234")
        // Then
        XCTAssertTrue(isValidNumber, "Password is valid")
    }
    
    func testUsernameFailValidation() {
        // Given
        // When
        let isValidUsername = obj.isUsernameValid(_uname: "abc@1234")
        //Then
        XCTAssertFalse(isValidUsername, "Username is not valid")
        
    }
    
    func testUsernameSuccessValidation() {
        // Given
        // When
        let isValidUsername = obj.isUsernameValid(_uname: "Priya")
        //Then
        XCTAssertFalse(isValidUsername, "Username is valid")
        
    }
    
    
}
