class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.0/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "9a765c06d397c89155525a34559ec06fee1e83ef81b1c0b72b47161d2efc9e28"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.0/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "36eedf3d5a963a1cdff1a45ace5de4351d65c2dd45e62837fb206a2932979440"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
