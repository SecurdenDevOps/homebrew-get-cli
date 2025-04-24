class Securden < Formula
  desc "Securden's official CLI tool provides a secure, seamless and an efficient way for non-developers and system admins to integrate Securden’s powerful password management abilities into their CLIs & tools. You can use it across various environments, whether it’s local development, CI/CD, staging, or production."
  homepage "https://github.com/SecurdenDevOps/homebrew-get-cli"
  license "MIT"
  version "1.0.0"

  on_intel do
    url "https://github.com/SecurdenDevOps/homebrew-get-cli/releases/download/v#{version}/securden-cli-darwin-amd64.tar.gz"
    sha256 "F19DF17551D07908E7CCF0FDC0E3AC3B5A6FD19C7FAE6CDE9FC8CB8211BCD48F"
  end

  on_arm do
    url "https://github.com/SecurdenDevOps/homebrew-get-cli/releases/download/v#{version}/securden-cli-darwin-arm64.tar.gz"
    sha256 "5331E85548F97CE3BF9ED298008C9505469AC2DA14575809C9FD9CB8F4EAE5C9"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "securden-cli"
  end
end