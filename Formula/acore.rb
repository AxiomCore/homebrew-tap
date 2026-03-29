class Acore < Formula
  desc "Acore evaluation engine for Axiom"
  homepage "https://github.com/AxiomCore/cli"
  url "https://github.com/AxiomCore/cli/releases/download/v0.0.73/acore-macos-arm64.tar.gz"
  sha256 "4dda259a72f66b7852f203a049c24504c424faae5b741f16ca056ff8edc53027"
  version "0.0.73"

  def install
    chmod 0755, "acore" 
    bin.install "acore"
  end

  test do
    assert_match "Pkl", shell_output("#{bin}/acore --version")
  end
end
