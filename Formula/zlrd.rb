class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.2/zlrd-aarch64-macos.tar.gz"
      sha256 "cec940f274f38ce40b032c7c727fbdc7631c01baf182b7d9113468b3009509a9"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.2/zlrd-x86_64-macos.tar.gz"
      sha256 "e023e3f888ea91da17c20513b272471d820c2def334b8c62e325fc52d6d0966e"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
