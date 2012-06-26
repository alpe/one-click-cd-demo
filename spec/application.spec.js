var requirejs = require('requirejs');

requirejs(['static/application.js'],
		function (app) {
			describe("one-click CD demo", function() {
				it("says hello", function() {
					expect(app.hello_world()).toEqual("Hello world!");
				});
			});
		});
