class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.2/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "334ac3d89c9d95a6fa7e59838133b1fa95d27839c024034a9f04106bc581e2cf"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.2/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "35fec36c44f19daa140e125911a5803d6a800c1c9a976c7cab1666bea1ea9da9"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
