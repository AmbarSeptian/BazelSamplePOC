import XCTest

final class UITest: XCTestCase {
    func test() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(app.buttons["button_click_me"].exists)
    }
    
    func test_button_click_me_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(app.buttons["button_click_me"].exists)
    }
    
    func test_title_text_exist() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(app.staticTexts["title_text"].exists)
    }
}
