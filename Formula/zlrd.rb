class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.1/zlrd-aarch64-macos.tar.gz"
      sha256 "f0cde1ac0c3adf0f819c1a78072ab6620f2ae869bbe6fe0edcae9089ce6f3278"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.1/zlrd-x86_64-macos.tar.gz"
      sha256 "23054e096189d3d1df08003789e6c7af0e12b91a64cc8e1deeedeeb7196790a1"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
