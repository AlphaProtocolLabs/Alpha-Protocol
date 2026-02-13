import Link from "next/link";
import type { Metadata } from "next";
import CopyButton from "@/components/CopyButton";

export const metadata: Metadata = {
  title: "PCG Dashboard - Power Club Global",
  description: "Download the Power Club Global Dashboard and start earning VIBE tokens. Transform your device into a decentralized compute node.",
  keywords: ["PCG", "Power Club Global", "VIBE", "dashboard", "compute", "earn crypto", "decentralized"],
};

const platformDownloads = [
  {
    platform: "Mac",
    icon: "🍎",
    description: "macOS 10.15+ (Intel & Apple Silicon)",
    quickInstall: true,
  },
  {
    platform: "Linux",
    icon: "🐧",
    description: "Ubuntu 20.04+, Debian, and compatible",
    quickInstall: true,
  },
];

const dashboardFeatures = [
  {
    icon: "💰",
    title: "Earn VIBE Rewards",
    description: "Contribute compute power and earn VIBE tokens automatically",
  },
  {
    icon: "⚡",
    title: "Auto-Start Services",
    description: "APN node runs in background on system startup",
  },
  {
    icon: "🔐",
    title: "Device Wallet",
    description: "Each device gets its own wallet for VIBE rewards",
  },
  {
    icon: "📊",
    title: "Web Dashboard",
    description: "Monitor your network status and earnings at localhost:58297",
  },
  {
    icon: "🌐",
    title: "Mesh Network",
    description: "Join the decentralized compute network instantly",
  },
  {
    icon: "🎯",
    title: "One Command Setup",
    description: "Install everything with a single command",
  },
];

const vibeFeatures = [
  {
    label: "Instant Transfer",
    description: "Purchase and receive VIBE tokens in seconds",
  },
  {
    label: "Secure Payment",
    description: "V Link integration for safe transactions",
  },
  {
    label: "No Minimum",
    description: "Buy any amount starting from $1",
  },
];

export default function DashboardPage() {
  return (
    <div>
      {/* Hero Section */}
      <section className="min-h-[80vh] flex items-center justify-center px-4 sm:px-6 py-20">
        <div className="max-w-4xl mx-auto text-center">
          <div className="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-gradient-to-r from-[#22c55e]/20 to-[var(--alpha-primary)]/20 border border-[#22c55e]/30 mb-6">
            <div className="w-8 h-8 rounded-full bg-[#22c55e] flex items-center justify-center">
              <span className="text-sm font-bold text-black">PCG</span>
            </div>
            <span className="text-xs tracking-wider font-medium text-[var(--text-primary)]">
              POWER CLUB GLOBAL
            </span>
          </div>

          <h1 className="text-3xl sm:text-4xl md:text-5xl font-light text-[var(--text-primary)] tracking-widest mb-4">
            GET YOUR
          </h1>
          <h2 className="text-4xl sm:text-5xl md:text-7xl font-bold text-gradient tracking-[0.2em] mb-8">
            DASHBOARD
          </h2>
          <p className="text-[var(--text-secondary)] text-sm sm:text-base tracking-wider max-w-2xl mx-auto mb-10 leading-relaxed">
            TRANSFORM YOUR DEVICE INTO A DECENTRALIZED COMPUTE NODE • EARN VIBE TOKENS 24/7
          </p>

          {/* Quick Stats */}
          <div className="grid grid-cols-3 gap-4 max-w-2xl mx-auto mb-12">
            <div className="card p-4 text-center">
              <p className="text-2xl font-bold text-[#22c55e]">$0.001</p>
              <p className="text-xs text-[var(--text-muted)] uppercase tracking-wider mt-1">VIBE Price</p>
            </div>
            <div className="card p-4 text-center">
              <p className="text-2xl font-bold text-[var(--text-primary)]">11+</p>
              <p className="text-xs text-[var(--text-muted)] uppercase tracking-wider mt-1">Active Nodes</p>
            </div>
            <div className="card p-4 text-center">
              <p className="text-2xl font-bold text-[var(--alpha-accent)]">24/7</p>
              <p className="text-xs text-[var(--text-muted)] uppercase tracking-wider mt-1">Earning</p>
            </div>
          </div>

          <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
            <a
              href="#download"
              className="btn-primary inline-flex items-center gap-3"
            >
              <span>Download Dashboard</span>
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
              </svg>
            </a>
            <a
              href="#vibe"
              className="btn-secondary inline-flex items-center gap-2"
            >
              <span>Buy VIBE Tokens</span>
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6" />
              </svg>
            </a>
          </div>
        </div>
      </section>

      {/* Download Section */}
      <section id="download" className="py-20 px-4 sm:px-6 bg-[var(--bg-surface)]">
        <div className="max-w-5xl mx-auto">
          <div className="text-center mb-12">
            <h2 className="text-2xl sm:text-3xl font-light text-[var(--text-primary)] tracking-widest mb-2">
              ONE COMMAND
            </h2>
            <h3 className="text-3xl sm:text-4xl md:text-5xl font-bold text-gradient tracking-[0.2em] mb-4">
              INSTALLATION
            </h3>
            <p className="text-[var(--text-secondary)] max-w-2xl mx-auto">
              Install the PCG Dashboard and start earning VIBE tokens in seconds
            </p>
          </div>

          {/* Installation Command */}
          <div className="card mb-8 bg-gradient-to-br from-[var(--bg-card)] to-[var(--bg-surface)]">
            <div className="flex items-center justify-between mb-4">
              <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-lg bg-[var(--alpha-primary)]/20 flex items-center justify-center">
                  <svg className="w-5 h-5 text-[var(--alpha-accent)]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                  </svg>
                </div>
                <div>
                  <h4 className="text-lg font-semibold text-[var(--text-primary)]">Quick Install</h4>
                  <p className="text-xs text-[var(--text-muted)]">Copy and paste into your terminal</p>
                </div>
              </div>
              <CopyButton text="curl -fsSL https://raw.githubusercontent.com/KingBodhi/pcg-cc-mcp/main/install-pcg-client.sh | bash" />
            </div>

            <div className="p-4 rounded-lg bg-[var(--bg-primary)] border border-[var(--border-default)] font-mono text-sm overflow-x-auto">
              <code className="text-[var(--alpha-accent)]">
                curl -fsSL https://raw.githubusercontent.com/KingBodhi/pcg-cc-mcp/main/install-pcg-client.sh | bash
              </code>
            </div>

            <div className="mt-4 p-4 rounded-lg bg-[var(--alpha-primary)]/10 border border-[var(--alpha-accent)]/30">
              <div className="flex items-start gap-3">
                <svg className="w-5 h-5 text-[var(--alpha-accent)] flex-shrink-0 mt-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
                <div>
                  <h5 className="font-semibold text-[var(--text-primary)] mb-1 text-sm">Requirements</h5>
                  <p className="text-sm text-[var(--text-secondary)]">
                    Rust/Cargo must be installed. Visit <a href="https://rustup.rs" target="_blank" rel="noopener noreferrer" className="text-[var(--alpha-accent)] hover:underline">rustup.rs</a> if needed.
                  </p>
                </div>
              </div>
            </div>
          </div>

          {/* Platform Support */}
          <div className="grid md:grid-cols-2 gap-6">
            {platformDownloads.map((platform) => (
              <div key={platform.platform} className="card text-center">
                <div className="text-5xl mb-4">{platform.icon}</div>
                <h4 className="text-xl font-semibold text-[var(--text-primary)] mb-2">
                  {platform.platform}
                </h4>
                <p className="text-sm text-[var(--text-secondary)] mb-4">
                  {platform.description}
                </p>
                <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-[var(--status-success-bg)] text-[var(--status-success)] text-xs tracking-wider font-medium">
                  <span className="w-2 h-2 rounded-full bg-[var(--status-success)]"></span>
                  SUPPORTED
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* What You Get */}
      <section className="py-20 px-4 sm:px-6">
        <div className="max-w-5xl mx-auto">
          <div className="text-center mb-12">
            <h2 className="text-2xl sm:text-3xl font-light text-[var(--text-primary)] tracking-widest mb-2">
              WHAT YOU
            </h2>
            <h3 className="text-3xl sm:text-4xl md:text-5xl font-bold text-gradient tracking-[0.2em] mb-4">
              GET
            </h3>
          </div>

          <div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {dashboardFeatures.map((feature, index) => (
              <div key={index} className="card hover:border-[var(--alpha-accent)] transition-all">
                <div className="text-3xl mb-4">{feature.icon}</div>
                <h4 className="text-lg font-semibold text-[var(--text-primary)] mb-2">
                  {feature.title}
                </h4>
                <p className="text-[var(--text-secondary)] text-sm">
                  {feature.description}
                </p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* VIBE Token Purchase Section */}
      <section id="vibe" className="py-20 px-4 sm:px-6 bg-[var(--bg-surface)]">
        <div className="max-w-4xl mx-auto">
          <div className="card p-8 sm:p-12 relative overflow-hidden">
            <div className="absolute inset-0 bg-gradient-to-br from-[#22c55e]/10 via-transparent to-[var(--alpha-primary)]/10" />

            <div className="relative z-10">
              <div className="flex items-center justify-center gap-3 mb-6">
                <div className="w-12 h-12 rounded-full bg-[#22c55e] flex items-center justify-center">
                  <span className="text-xl font-bold text-black">V</span>
                </div>
                <span className="px-3 py-1 rounded-full bg-[#22c55e]/20 text-[#22c55e] text-xs tracking-wider font-medium">
                  ECOSYSTEM TOKEN
                </span>
              </div>

              <h2 className="text-2xl sm:text-3xl font-light text-[var(--text-primary)] tracking-widest mb-2 text-center">
                BUY
              </h2>
              <h3 className="text-3xl sm:text-4xl md:text-5xl font-bold tracking-[0.2em] mb-6 text-center text-[#22c55e]">
                VIBE TOKENS
              </h3>

              <p className="text-[var(--text-secondary)] max-w-xl mx-auto mb-8 text-center">
                Purchase VIBE tokens instantly with V Link. Use them in the Power Club Global ecosystem or hold as your devices earn more.
              </p>

              {/* Token Info */}
              <div className="grid grid-cols-3 gap-4 mb-8">
                <div className="p-4 rounded-xl bg-[var(--bg-surface)] border border-[var(--border-default)] text-center">
                  <p className="text-2xl font-bold text-[#22c55e]">$0.001</p>
                  <p className="text-xs text-[var(--text-muted)] uppercase tracking-wider mt-1">Current Price</p>
                </div>
                <div className="p-4 rounded-xl bg-[var(--bg-surface)] border border-[var(--border-default)] text-center">
                  <p className="text-2xl font-bold text-[var(--text-primary)]">1B</p>
                  <p className="text-xs text-[var(--text-muted)] uppercase tracking-wider mt-1">Total Supply</p>
                </div>
                <div className="p-4 rounded-xl bg-[var(--bg-surface)] border border-[var(--border-default)] text-center">
                  <p className="text-2xl font-bold text-[#22c55e]">LIVE</p>
                  <p className="text-xs text-[var(--text-muted)] uppercase tracking-wider mt-1">Status</p>
                </div>
              </div>

              {/* Features */}
              <div className="grid sm:grid-cols-3 gap-4 mb-8">
                {vibeFeatures.map((feature, index) => (
                  <div key={index} className="p-4 rounded-xl bg-[var(--bg-card)] border border-[var(--border-default)] text-center">
                    <p className="font-semibold text-[var(--text-primary)] mb-1 text-sm">{feature.label}</p>
                    <p className="text-xs text-[var(--text-muted)]">{feature.description}</p>
                  </div>
                ))}
              </div>

              {/* CTA Buttons */}
              <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
                <a
                  href="https://vibe-token.vercel.app/buy"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="px-8 py-4 bg-[#22c55e] hover:bg-[#16a34a] rounded-xl font-semibold text-black transition-all inline-flex items-center gap-2"
                >
                  <span>Buy with V Link</span>
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M14 5l7 7m0 0l-7 7m7-7H3" />
                  </svg>
                </a>
                <a
                  href="https://vibe-token.vercel.app/tokenomics"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="px-8 py-4 border border-[#22c55e]/30 rounded-xl font-semibold text-[#22c55e] hover:bg-[#22c55e]/10 transition-all"
                >
                  View Tokenomics
                </a>
              </div>

              {/* Info Note */}
              <div className="mt-8 p-4 rounded-lg bg-[var(--bg-primary)]/50 border border-[var(--border-default)]">
                <div className="flex items-start gap-3">
                  <svg className="w-5 h-5 text-[#22c55e] flex-shrink-0 mt-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                  <div>
                    <p className="text-sm text-[var(--text-secondary)]">
                      <span className="font-semibold text-[var(--text-primary)]">Two Separate Wallets:</span> Your user wallet (for buying VIBE) is separate from your device wallet (which earns VIBE). Each device automatically gets its own earning wallet.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* How It Works */}
      <section className="py-20 px-4 sm:px-6">
        <div className="max-w-4xl mx-auto">
          <div className="text-center mb-12">
            <h2 className="text-2xl sm:text-3xl font-light text-[var(--text-primary)] tracking-widest mb-2">
              HOW IT
            </h2>
            <h3 className="text-3xl sm:text-4xl md:text-5xl font-bold text-gradient tracking-[0.2em] mb-4">
              W O R K S
            </h3>
          </div>

          <div className="space-y-6">
            <div className="card">
              <div className="flex items-start gap-4">
                <div className="w-12 h-12 rounded-full bg-[var(--alpha-primary)]/20 flex items-center justify-center flex-shrink-0">
                  <span className="text-xl font-bold text-[var(--alpha-accent)]">1</span>
                </div>
                <div className="flex-1">
                  <h4 className="text-lg font-semibold text-[var(--text-primary)] tracking-wider mb-2">
                    Install Dashboard
                  </h4>
                  <p className="text-[var(--text-secondary)]">
                    Run the one-line install command. The installer builds binaries, sets up auto-start, and creates your device wallet automatically.
                  </p>
                </div>
              </div>
            </div>

            <div className="card">
              <div className="flex items-start gap-4">
                <div className="w-12 h-12 rounded-full bg-[var(--alpha-primary)]/20 flex items-center justify-center flex-shrink-0">
                  <span className="text-xl font-bold text-[var(--alpha-accent)]">2</span>
                </div>
                <div className="flex-1">
                  <h4 className="text-lg font-semibold text-[var(--text-primary)] tracking-wider mb-2">
                    Connect to Network
                  </h4>
                  <p className="text-[var(--text-secondary)]">
                    Your device joins the APN mesh network and starts contributing compute resources. Monitor everything at http://localhost:58297
                  </p>
                </div>
              </div>
            </div>

            <div className="card">
              <div className="flex items-start gap-4">
                <div className="w-12 h-12 rounded-full bg-[var(--alpha-primary)]/20 flex items-center justify-center flex-shrink-0">
                  <span className="text-xl font-bold text-[var(--alpha-accent)]">3</span>
                </div>
                <div className="flex-1">
                  <h4 className="text-lg font-semibold text-[var(--text-primary)] tracking-wider mb-2">
                    Earn VIBE 24/7
                  </h4>
                  <p className="text-[var(--text-secondary)]">
                    VIBE tokens are automatically sent to your device wallet based on uptime, compute contributions, and GPU availability. No manual claiming needed!
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Final CTA */}
      <section className="py-20 px-4 sm:px-6 bg-[var(--bg-surface)]">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-2xl sm:text-3xl font-light text-[var(--text-primary)] tracking-widest mb-2">
            READY TO
          </h2>
          <h3 className="text-3xl sm:text-4xl md:text-5xl font-bold text-gradient tracking-[0.2em] mb-8">
            GET STARTED?
          </h3>
          <p className="text-[var(--text-secondary)] max-w-xl mx-auto mb-10 leading-relaxed">
            Join Power Club Global today. Install the dashboard, connect to the network, and start earning VIBE tokens from your device's compute power.
          </p>
          <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
            <a href="#download" className="btn-primary">
              Install Now
            </a>
            <Link href="/download" className="btn-secondary">
              Full Documentation
            </Link>
          </div>
        </div>
      </section>
    </div>
  );
}
