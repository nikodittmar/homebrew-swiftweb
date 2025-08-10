class Swiftweb < Formula
  desc "A command-line tool for the SwiftWeb framework"

  homepage "https://github.com/nikodittmar/SwiftWeb"

  url "https://github.com/nikodittmar/SwiftWeb/archive/refs/tags/v0.5.2.tar.gz"
  version "0.5.2"

  sha256 "1c9481842d31936cd339a60c517c25c832472051d8519e0cf895ba405c20c674"

  depends_on :xcode => ["15.0", :build]

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"

    mv ".build/release/SwiftWeb_SwiftWebGenerator.bundle", ".build/release/swiftweb.bundle"

    libexec.install ".build/release/swiftweb"
    libexec.install ".build/release/swiftweb.bundle"

    (bin/"swiftweb").write_exec_script libexec/"swiftweb"
  end
end