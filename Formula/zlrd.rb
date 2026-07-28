class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.3/zlrd-aarch64-macos.tar.gz"
      sha256 "c832bc02bab6a402e820997381b1e3c1acf0651ca48c22c95d74607ff7e7faa1"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.3/zlrd-x86_64-macos.tar.gz"
      sha256 "4849aa3fbac9a8754ff9df5d3663259b45c8ee86abd05c3a8eb3a67cc8b5b58a"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
