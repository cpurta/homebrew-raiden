class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/cpurta/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.3.0/raiden-v0.3.0-macOS.zip"
  version "v0.3.0"
  sha256 "3f34d241f6b23d30d69c7bd25fa62de280e5f2bb34f9c08340f3e390e80e2809"

  depends_on :macos => :el_capitan

  def install
    system "unzip", "#{HOMEBREW_PREFIX}/raiden-v0.3.0-macOS.zip"
    system "mv", "#{HOMEBREW_PREFIX}/raiden-v0.3.0-macOS", "#{HOMEBREW_PREFIX}/raiden"
    bin.install "raiden"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/raiden", "version"
  end
end
