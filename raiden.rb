class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/cpurta/homebrew-raiden"
  url "https://github.com/raiden-network/raiden.git", :tag => "v0.3.0"

  depends_on :macos => :el_capitan
  depends_on "python@2" => :build

  def install
    # system "easy_install", "pip"
    # system "pip", "install", "virtualenv"
    # system "virtualenv", "venv-raiden"
    # system "source", "venv-raiden/bin/activate"
    system "cd", "raiden"
    system "pip", "install", "-r", "requirements-dev.txt"
    system "python", "setup.py", "develop"
    bin.install "raiden"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/raiden", "version"
  end
end
