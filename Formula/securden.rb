class Securden < Formula
  desc "Securden's official CLI tool provides a secure, seamless and an efficient way for non-developers and system admins to integrate Securden’s powerful password management abilities into their CLIs & tools. You can use it across various environments, whether it’s local development, CI/CD, staging, or production."
  homepage "https://github.com/SecurdenDevOps/homebrew-get-cli"
  license "MIT"
  version "1.0.0"

  on_intel do
    url "https://github.com/SecurdenDevOps/homebrew-get-cli/releases/download/v#{version}/securden-cli-darwin-amd64.tar.gz"
    sha256 "43F5A69A23DCB2828477C2F9C6C9E1AF51BFDBFB3438FFD11F97941221D9521C"
  end

  on_arm do
    url "https://github.com/SecurdenDevOps/homebrew-get-cli/releases/download/v#{version}/securden-cli-darwin-arm64.tar.gz"
    sha256 "08A0D60E4B59950CF0BA849071BB2D41D4E475E512202305DC54EC932C515639"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "securden-cli"
  end
end