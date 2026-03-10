class Openwire < Formula
  desc "Decentralized P2P local network messenger - encrypted, anonymous, zero-config"
  homepage "https://github.com/vimbeldum/openwire"
  url "https://github.com/vimbeldum/openwire/archive/refs/tags/v0.9.3.tar.gz"
  sha256 "ec895a27987f99bddcbfe721fd61864d5441cf9140dc62e089b686e9e409d1e2"
  version "0.9.3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "openwire", shell_output("#{bin}/openwire --help")
  end
end
