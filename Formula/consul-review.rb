# frozen_string_literal: true

class ConsulReview < Formula
  desc "Orchestrate multiple AI agents to review GitHub Pull Requests in parallel"
  homepage "https://github.com/Binsabbar/consul-review"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0/consul-review_1.0.0_darwin_arm64.tar.gz"
      sha256 "5cc07cf0489b6cd5374e193e19e6b85897ed7c1bfa1afca8893f1e2207394f4c"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0/consul-review_1.0.0_darwin_amd64.tar.gz"
      sha256 "ce5d2961f60abcff5a4be7bf0fa13fa8aea7727647102e7317bb1559ae51c6bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0/consul-review_1.0.0_linux_arm64.tar.gz"
      sha256 "02539b74a4bd7776d3433d1029f13ce5b10560298ad1531805e9af1c8bfa5530"
    end

    on_intel do
      url "https://github.com/Binsabbar/consul-review/releases/download/v1.0.0/consul-review_1.0.0_linux_amd64.tar.gz"
      sha256 "e65fa479a108a3066c7ee12eccbb487a8817344af177bd24e231b2499f0c9ac0"
    end
  end

  def install
    bin.install "consul-review"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/consul-review --version")
  end
end
