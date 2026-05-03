class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-arm64.tar.gz"
      sha256 "9dd9a61185045693022c824745e24278b1eb8d7d304b2d39ceb9d164f6885387"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-amd64.tar.gz"
      sha256 "9d948de86f56967a124e68f21a1880c2dd7c4887350270abf3186230080e0828"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-arm64.tar.gz"
      sha256 "3e5fd661748442d6dd36f734464337a9669b87f9d7bdc45701674d42cbb37caf"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-amd64.tar.gz"
      sha256 "1b8009a013330ca69e64c16d09a6600ce8e841fc30954e5d66433f916c42c062"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
