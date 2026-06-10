class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "0.3.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.43/zlrd-aarch64-macos.tar.gz"
      sha256 "f3b191341da490032310e4591a1b1c17fc713b4d75d03a645ba5da3f085efd0d"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.43/zlrd-x86_64-macos.tar.gz"
      sha256 "991264dac1bc03af707e138282f56bbe8405dae737fff6274dc7c23bf0123db7"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
