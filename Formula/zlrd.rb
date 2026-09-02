class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.0/zlrd-aarch64-macos.tar.gz"
      sha256 "2386b282c72d0f4ad8152dc02d0f6967a4393f5c7723a7ce63e913a6cde599fe"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.0/zlrd-x86_64-macos.tar.gz"
      sha256 "0548c13ec5faba66c40aa4fd54cdd3e008ca6a25433f754aa95fecfc57e662e4"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
