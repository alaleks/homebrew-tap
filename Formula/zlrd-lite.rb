class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.2.0/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "2684e4a726d0d7b0680402bfc675a3f0e975ea51846280993a1d75d9f86aebc4"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.2.0/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "658f378d5cba3d4c3b6cab0c870796b2d71cf217da4834df5d4c39195a0e6925"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
