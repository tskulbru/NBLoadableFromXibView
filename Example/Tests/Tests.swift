// https://github.com/Quick/Quick

import Quick
import Nimble
import NBLoadableFromXibView

class ExampleViewSpec: QuickSpec {
    override func spec() {

        var viewController: ViewController!

        beforeEach {
            let storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))

            viewController = storyboard.instantiateInitialViewController() as! ViewController

            UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
            let _ = viewController.view
        }
        describe("viewController has a dummy view") {
            it("has an initiated ExampleView") {
                expect(viewController.exampleView).toNot(beNil())
            }

            it("has a ExampleView with an initiated label") {
                expect(viewController.exampleView.exampleLabel).toNot(beNil())
            }

            it("has text: Look at me ma', I'm reusable!") {
                expect(viewController.exampleView.exampleLabel.text) == "Look at me ma', I'm reusable!"
            }
        }
    }
}
