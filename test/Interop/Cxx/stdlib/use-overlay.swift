// RUN: %target-run-simple-swift(-I %S/Inputs -Xfrontend -enable-experimental-cxx-interop)
//
// REQUIRES: executable_test
// REQUIRES: OS=macosx

import StdlibUnittest
import std

var CXXOverlayTestSuite = TestSuite("CXXOverlay")

CXXOverlayTestSuite.test("std.string <=> Swift.String") {
  let cxx = std.string("something123")
  let swift = String(cxxString: cxx)
  expectEqual(swift, "something123")
}

runAllTests()
