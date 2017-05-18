class Meow < Formula {
  desc "MongoDB Object Persistence Framework without boilerplate code"
  homepage "http://openkitten.org"
  version "0.1.0"
  url "https://github.com/krzysztofzablocki/Sourcery/archive/a6118efb5b9756eb59570e5e92b625c9b591fd24.zip"

	bottle do
    cellar :any
    sha256 "bbe3aa410787d85878d2bd8b33dc7638adaefc0acd84d1ff36c7b88676150982" => :sierra
  end

	depends_on :xcode => ["8.0", :build]

	def install
    ENV.delete("CC")
    ENV["SDKROOT"] = MacOS.sdk_path
    system "swift", "build", "-c", "release", "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/sourcery"
    lib.install Dir[".build/release/*.dylib"]
  end
}
