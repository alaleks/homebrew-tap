class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.1/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "a67ce73f484898e146380ee8e57bbdaf0872c64fd07915dc3509366c36ed31a5"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.1/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "311ea56b023cf3e3a31670f0ba0fe4bdc3b95dfbde36ee3628539544bb9fae1f"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
