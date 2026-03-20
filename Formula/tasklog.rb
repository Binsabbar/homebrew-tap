# frozen_string_literal: true

class Tasklog < Formula
  desc "Interactive CLI tool for tracking time on Jira tasks with Jira Cloud and Tempo integration"
  homepage "https://github.com/Binsabbar/tasklog"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Binsabbar/tasklog/releases/download/v1.0.0/tasklog_1.0.0_darwin_arm64.tar.gz"
      sha256 "94c314212570ad7cc32c9a5e597ab589a80c9c00dcdcabf2dee4147584760238"
    end

    on_intel do
      url "https://github.com/Binsabbar/tasklog/releases/download/v1.0.0/tasklog_1.0.0_darwin_amd64.tar.gz"
      sha256 "8372cbd86514684d706d6a64526cc44bba3ff8bd8cd1d58ce89609572a0efabc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Binsabbar/tasklog/releases/download/v1.0.0/tasklog_1.0.0_linux_arm64.tar.gz"
      sha256 "832d1b51c52ef6ebf5232155aed3f9a1b671fc6c6e5914933c4ddcc0891e3bc1"
    end

    on_intel do
      url "https://github.com/Binsabbar/tasklog/releases/download/v1.0.0/tasklog_1.0.0_linux_amd64.tar.gz"
      sha256 "acae2b2fc32ed6d9f4c2ed4fe67e20057d719a731e20ad4eb361c9891a08ba37"
    end
  end

  def install
    bin.install "tasklog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tasklog --version")
  end
end
