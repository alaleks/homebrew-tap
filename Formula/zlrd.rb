class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.3/zlrd-aarch64-macos.tar.gz"
      sha256 "62d48cb0537eda7a6160077cf021930965650ce4e84a1875e18b9febffbe332b"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.3/zlrd-x86_64-macos.tar.gz"
      sha256 "3429778e961dcbb8518b2c2f97847c8e3082d4b6e8e8326e2e185f8f7aba9fea"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
