class Securden < Formula
  desc "Securden's official CLI tool provides a secure, seamless and an efficient way for non-developers and system admins to integrate Securden’s powerful password management abilities into their CLIs & tools. You can use it across various environments, whether it’s local development, CI/CD, staging, or production."
  homepage "https://github.com/SecurdenDevOps/homebrew-get-cli"
  license "MIT"
  version "1.0.0"

  on_intel do
    url "https://github.com/SecurdenDevOps/homebrew-get-cli/releases/download/v#{version}/securden-cli-darwin-amd64.tar.gz"
    sha256 "808B8344067C97BC02B3810831496FE591D0E75705B73A0F0FC4CC7ED78C76C8"
  end

  on_arm do
    url "https://github.com/SecurdenDevOps/homebrew-get-cli/releases/download/v#{version}/securden-cli-darwin-arm64.tar.gz"
    sha256 "0E2DA48C5675C5DE4C88C45C3125C1DAF3A33D33C5A3B7EB4B319B5CB2D282B9"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "securden-cli"
  end
end