class Openwire < Formula
  desc "Decentralized P2P local network messenger - encrypted, anonymous, zero-config"
  homepage "https://github.com/vimbeldum/openwire"
  url "https://github.com/vimbeldum/openwire/archive/refs/tags/v0.9.1.tar.gz"
  version "0.9.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "openwire", shell_output("#{bin}/openwire --help")
  end
end
