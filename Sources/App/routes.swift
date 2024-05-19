import Vapor

func routes(_ app: Application) throws {
    app.get { req -> EventLoopFuture<View> in
        let context = ["title": "Hello, Leaf!", "message": "This is a simple Leaf template."]
        return req.view.render("hello", context)
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
}
