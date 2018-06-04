class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden.git", :tag => 'v0.3.0'

  depends_on :macos => :el_capitan

  depends_on :python => :build
  depends_on :pip => :build

  def install
    system "cd", "raiden"
    system "pip", "install", "--upgrade", "-r", "requirements-dev.txt"
    system "python", "setup.py", "develop"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/raiden", "version"
  end
end
