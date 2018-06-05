class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/cpurta/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.3.0/raiden-v0.3.0-linux.tar.gz"
  version "v0.3.0"

  depends_on :macos => :el_capitan

  def install
    system "mv", "raiden-v0.3.0-linux", "raiden"
    prefix.install "raiden"
  end

  test do
    system "#{prefix}/raiden", "version"
  end
end
