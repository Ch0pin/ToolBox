
 
Java.perform(function () {


	var mainactivity = Java.use("com.app.foo.bar");


	mainactivity.foo.implementation = function() {

	console.log("\nexit called")	
	
	};

})

