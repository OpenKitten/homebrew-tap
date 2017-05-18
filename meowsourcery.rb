class meowsourcery < Formula
  desc "Meow's version of Sourcery necessary for boilerplate generation"
  version "0.1.0"
  url "https://github.com/krzysztofzablocki/Sourcery/archive/a6118efb5b9756eb59570e5e92b625c9b591fd24.zip"

	depends_on :xcode => ["8.0", :build]

	def install
    ENV.delete("CC")
    ENV["SDKROOT"] = MacOS.sdk_path
    system "swift", "build", "-c", "release", "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/sourcery"

    lib.install Dir[".build/release/*.dylib"]
  end
end
