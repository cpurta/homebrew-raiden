class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/cpurta/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.3.0/raiden-v0.3.0-macOS.zip"
  version "v0.3.0"

  depends_on :macos => :el_capitan

  def install
    bin.install "raiden-0.3.0-macos"
  end

  test do
    system "#{bin}/raiden-0.3.0-macos", "version"
  end
end
