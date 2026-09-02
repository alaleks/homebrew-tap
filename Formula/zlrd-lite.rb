class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.0/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "2f7613483cb4035da267bdc5f1e692b865667a0956aa6574f0a8d184bf28c0f2"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.0/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "1056306c7454a3b0e40a5ad92d104e4d4d046472cf457047e8033e7b3855451a"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
