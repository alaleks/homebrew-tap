class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.4/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "267a080c27d79faaad11bb825ad7445b4d90d282c11b00fde1eb5a9288ed0180"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.4/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "060d702d7a8e51171ddf8aa3880239409a9ded0f69cae98ec6f104605d5e40c8"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
