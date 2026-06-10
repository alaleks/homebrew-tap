class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "0.3.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.41/zlrd-aarch64-macos.tar.gz"
      sha256 "1fdd12af810bbd26e4d0c97a75e7e34f57b6c3ec27a06166903286d92448fb31"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.41/zlrd-x86_64-macos.tar.gz"
      sha256 "d851b5bc843d082f0db3c528401cccee78fa3d4bc1b693386166106648741e3c"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
