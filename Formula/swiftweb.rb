class Swiftweb < Formula
  desc "A command-line tool for the SwiftWeb framework"

  homepage "https://github.com/nikodittmar/SwiftWeb"

  url "https://github.com/nikodittmar/SwiftWeb/archive/refs/tags/v0.5.1.tar.gz"
  version "0.5.1"

  sha256 "f1d7b07ac8ea1364a25953e845b3f96eada0368d6a7a81315e51fbd63dc61e65"

  depends_on :xcode => ["15.0", :build]

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"

    bin.install ".build/release/swiftweb"

    bin.install ".build/release/SwiftWeb_SwiftWebGenerator.bundle"
  end
end