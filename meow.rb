class meow < Formula
  desc "MongoDB Object Persistence Framework without boilerplate code"
  version "0.1.0"
  url "https://github.com/OpenKitten/Meow/releases/download/#{version}/MeowCLI"

  depends_on "meowsourcery" => :run

  def install
    system "mv meowCLI meow"
    bin.install "meow"
  end
end
