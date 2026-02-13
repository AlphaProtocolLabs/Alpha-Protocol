"use client";

interface CopyButtonProps {
  text: string;
}

export default function CopyButton({ text }: CopyButtonProps) {
  const handleCopy = () => {
    navigator.clipboard.writeText(text);
  };

  return (
    <button
      onClick={handleCopy}
      className="px-4 py-2 bg-[var(--bg-surface)] border border-[var(--border-default)] hover:border-[var(--alpha-accent)] rounded-lg text-sm font-medium text-[var(--text-primary)] transition-all"
    >
      Copy
    </button>
  );
}
