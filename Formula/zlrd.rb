class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "0.3.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.44/zlrd-aarch64-macos.tar.gz"
      sha256 "f7af042665ab922b7bd5c2a3f59c8a803c1f9fbc05036378a9d57b02efb6ac16"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.44/zlrd-x86_64-macos.tar.gz"
      sha256 "cf4437f34893fd3ecf4fadd77d99e2486737ad9de1014015ec21b0cd0f92c6d6"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
