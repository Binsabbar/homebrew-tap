# frozen_string_literal: true

class ConsulReview < Formula
  desc "Orchestrate multiple AI agents to review GitHub Pull Requests in parallel"
  homepage "https://github.com/Binsabbar/consul-review"
  version "1.0.0-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0-rc.1/consul-review_1.0.0-rc.1_darwin_arm64.tar.gz"
      sha256 "1d04c46774e5a9aeb9091b09f88a68d0fa289485fa02adbba75b3321c4ec5215"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0-rc.1/consul-review_1.0.0-rc.1_darwin_amd64.tar.gz"
      sha256 "0a3cd5e1e855844d1c335905b9fab8bee2feba3f7d89be10345b68b316a98036"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0-rc.1/consul-review_1.0.0-rc.1_linux_arm64.tar.gz"
      sha256 "b134a76d58353e74f9aa5065ba10b8c99fdc31e51d3f5b0d621232fb0dcb34d0"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0-rc.1/consul-review_1.0.0-rc.1_linux_amd64.tar.gz"
      sha256 "5f3a933f1ec2ed7f0270a4fbf91547995cf8ecf97b05f526d271644c8aa89f19"
    end
  end

  def install
    bin.install "consul-review"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/consul-review --version")
  end
end
