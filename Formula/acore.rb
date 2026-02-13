class Acore < Formula
  desc "Acore CLI"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.1.0/jpkl-macos-arm64.tar.gz"
  sha256 "6ef58ea34f98cbd9d76a094727fd1dedd625ae37d9e48f3274333fba1a294e2f"
  version "0.1.0"

  def install
    bin.install "acore"
  end
end
