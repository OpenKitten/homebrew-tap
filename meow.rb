class Meow < Formula {
  desc "MongoDB Object Persistence Framework without boilerplate code"
  homepage "http://openkitten.org"
  version "0.1.0"
  url "https://github.com/OpenKitten/Meow/releases/download/#{version}/MeowCLI"

	bottle do
    cellar :any
    sha256 "c43243921bfa448fa46364955fdf664dd345897bd38010941e22631cd9550e7f" => :sierra
  end

	depends_on :xcode => ["8.0", :build]
}
