# frozen_string_literal: true

class ConsulReview < Formula
  desc "Orchestrate multiple AI agents to review GitHub Pull Requests in parallel"
  homepage "https://github.com/Binsabbar/consul-review"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_darwin_arm64.tar.gz"
      sha256 "c04186fd980d92ece2696f532da5b636a3292efe2e9b80457a4049a7fb347878"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_darwin_amd64.tar.gz"
      sha256 "954775548f529a564e27ca8c87c2bdd796a29b621cd15b9c747984ab1cba74b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_linux_arm64.tar.gz"
      sha256 "b4537527a889c7bc4219e3c1af36d3998ec0ea31a61b62a1cc31799321aa381b"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.1.0/consul-review_1.1.0_linux_amd64.tar.gz"
      sha256 "4993e79fa3c5b849b132b8a4cfcc5204c9ce43a8cb5553fc8e9e83e54d03f03d"
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
