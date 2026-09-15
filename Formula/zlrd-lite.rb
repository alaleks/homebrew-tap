class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.1/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "fcfd8d85dbf263ed6e5201198e9301571e43fd514c746491bbe71cb46be32f4b"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.1/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "73dda7dec7d3f6447499e171b68c9b6cdc8504b6d13c111732dd14411fa22945"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
