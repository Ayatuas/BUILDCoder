import BUILDCoder
import Cocoa

let fileUrl = "/Users/caojing/gitwork/iPhoneqq/third_party/pods/BUILD.idx"

var buildCoder = BUILDCoder()
buildCoder.readFileContent(fileUrl, bazel.self)
