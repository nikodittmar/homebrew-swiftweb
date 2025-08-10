class Swiftweb < Formula
  desc "A command-line tool for the SwiftWeb framework"

  homepage "https://github.com/nikodittmar/SwiftWeb"

  url "https://github.com/nikodittmar/SwiftWeb/archive/refs/tags/v0.5.0.tar.gz"
  version "0.5.0"

  sha256 "b8f5a580d712d10bbe0efce78f1de0d0217dea237e068cdfa8c5d8e325849273"

  depends_on :xcode => ["15.0", :build]

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"

    bin.install ".build/release/swiftweb"
  end
end