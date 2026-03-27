# frozen_string_literal: true

class ConsulReview < Formula
  desc "Orchestrate multiple AI agents to review GitHub Pull Requests in parallel"
  homepage "https://github.com/Binsabbar/consul-review"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_darwin_arm64.tar.gz"
      sha256 "f01c7106464a7983b2561fec32fd3abb81db705fbc101c6611d7d1b37bd4d340"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_darwin_amd64.tar.gz"
      sha256 "0af8a5dcc9bef87fe0d5d1ede780e8d5ea57e86d0ca361d436c3cdc433077612"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_linux_arm64.tar.gz"
      sha256 "7ed206bbc308e01ca59375a58885c50f7346c3d144af8bfdafa624519c93de2f"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_linux_amd64.tar.gz"
      sha256 "7c22f95fde5f8563d0ea1932ca2cf3ccbb92034dce736c2305a469bccbd193d3"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "consul-review"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/consul-review --version")
  end
end
