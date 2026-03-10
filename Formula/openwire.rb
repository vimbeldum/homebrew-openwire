class Openwire < Formula
  desc "P2P encrypted messenger for local networks with zero configuration"
  homepage "https://github.com/vimbeldum/openwire"
  url "https://github.com/vimbeldum/openwire/archive/refs/tags/v0.7.5.tar.gz"
  sha256 "ec774ec5fcf92e03f4e4e05047e9f672bfd482f205edc5e858e31f121a1ee5d3"
  license "MIT"
  head "https://github.com/vimbeldum/openwire.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "openwire", shell_output("#{bin}/openwire --version")
  end
end
