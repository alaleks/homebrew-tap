class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "0.3.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.40/zlrd-aarch64-macos.tar.gz"
      sha256 "7b94f8ab5a7bf6863609e42d0356fe1333cf0f43c364801f23465d334d65b973"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.40/zlrd-x86_64-macos.tar.gz"
      sha256 "dfca5baec96918f96faa7a7d63d95397ee82b2d15b76e38f73dc2d85222854d7"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
