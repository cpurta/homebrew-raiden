class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/cpurta/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.3.0/raiden-v0.3.0-macOS.zip"
  version "v0.3.0"
  sha256 "3f34d241f6b23d30d69c7bd25fa62de280e5f2bb34f9c08340f3e390e80e2809"

  depends_on :macos => :el_capitan

  def install
    system "pwd"
    prefix.install "raiden-v0.3.0-macOS"
  end

  test do
    system "#{prefix}/raiden", "version"
  end
end
