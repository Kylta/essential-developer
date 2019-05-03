//
//  URLSessionHTTPClientTests.swift
//  EssentialFeedTests
//
//  Created by Christophe Bugnon on 03/05/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import XCTest

class URLSessionHTTPClient {
    let session: URLSession

    init(session: URLSession) {
        self.session = session
    }

    func get(from url: URL) {
        session.dataTask(with: url) { _, _, _ in }
    }
}

class URLSessionHTTPClientTests: XCTestCase {

    func test_getFromURL_createDataTaskWithURL() {
        let url = URL(string: "http://any-url.com")!
        let session = URLSessionSpy()
        let sut = URLSessionHTTPClient(session: session)

        sut.get(from: url)

        XCTAssertEqual(session.receivedURLs, [url])
    }

    // MARK: - Helpers

    private class URLSessionSpy: URLSession {
        var receivedURLs = [URL]()

        override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            receivedURLs.append(url)
            return FakeURLSessionDataTask()
        }
    }

    private class FakeURLSessionDataTask: URLSessionDataTask {}
}
