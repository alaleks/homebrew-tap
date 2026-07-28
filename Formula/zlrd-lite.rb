class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.3/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "07a729e0aac3090c66ddad25f85456f8ee8d47d01f42cb4e11bd0ca4ef5e8528"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.3/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "b9600ca28ad43b561af6d04d5e5b93d03b38b93551f3be6854c1db1a3af37874"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
