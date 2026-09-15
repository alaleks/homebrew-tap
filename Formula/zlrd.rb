class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.2/zlrd-aarch64-macos.tar.gz"
      sha256 "ff6c4587267b4fa30fc622f2e984b70721b41b4b7aeac826c695c9ef757e985e"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.2/zlrd-x86_64-macos.tar.gz"
      sha256 "5e1898fe15b0137b0ad0c31c5aa64570eb7016f12f8241d3b6268dd857cf115f"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
