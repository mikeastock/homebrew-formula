class Sherpa < Formula
  desc "Command-line tool for deploying with Sherpa"
  homepage "https://github.com/mikeastock/sherpa-cli"
  url "https://github.com/mikeastock/sherpa-cli/archive/0.0.2.tar.gz"
  sha256 "f750c5478cc9d8bbd0bce2435863e90aee0069af09a7fb16924b52b4e91f6381"
  head "https://github.com/mikeastock/sherpa-cli.git"

  depends_on "rust" => :build

  def install
    system("cargo", "build", "--release")
    bin.install "target/release/sherpa"
  end

  test do
    system "#{bin}/sherpa", "-h"
  end
end
