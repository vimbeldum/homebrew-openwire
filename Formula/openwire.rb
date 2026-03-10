class Openwire < Formula
  desc "Decentralized P2P local network messenger - encrypted, anonymous, zero-config"
  homepage "https://github.com/vimbeldum/openwire"
  url "https://github.com/vimbeldum/openwire/archive/refs/tags/v0.9.4.tar.gz"
  sha256 "9f955f38cf643a3277c0c607ba7af67b4d589ad2664e2744d0b613e595eb3b6d"
  version "0.9.4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "openwire", shell_output("#{bin}/openwire --help")
  end
end
