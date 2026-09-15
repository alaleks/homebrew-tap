class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.1/zlrd-aarch64-macos.tar.gz"
      sha256 "2e10e5a68407c061657759c8293d74a798c70d0a3e31407086f20081d3f9f77b"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.1/zlrd-x86_64-macos.tar.gz"
      sha256 "7675afe2331b5e60e35b5dbbe069305842ac48fed556f884a56ce0b1d1134ea7"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
