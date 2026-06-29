class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.1/zlrd-aarch64-macos.tar.gz"
      sha256 "3319d2ee89feb59353bee120760c6ca1e78f3aec62c59ac617fb8ded5118528b"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.1/zlrd-x86_64-macos.tar.gz"
      sha256 "20f7badd0592562cce8c9a0075654db69fa4578f776d2736b524eade4cbc7776"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
