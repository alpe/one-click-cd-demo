var application = require("../application.js");

describe("one-click CD demo", function() {
    it("says hello", function() {
        expect(application.hello_world()).toEqual("Hello world!");
    });
});
