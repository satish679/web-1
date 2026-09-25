import { useState, useEffect } from "react";
import { imgWithFallback } from "../lib/site";

// A luxury image component. Tries your real photo first (as .png, then .jpg,
// then .jpeg — whichever one actually exists on disk), and only falls back to
// a curated stock photo if none of those load. Pass hideOnMissing for things
// like logos, where showing an unrelated stock interior photo would look
// broken — the element just disappears instead if no real file exists yet.
export default function LuxImg({ name, alt = "", className = "", style, loading = "lazy", hideOnMissing = false, ...rest }) {
    const { candidates, fallback } = imgWithFallback(name);
    const [idx, setIdx] = useState(0);
    useEffect(() => setIdx(0), [name]);
    const exhausted = idx >= candidates.length;
    if (exhausted && hideOnMissing) return null;
    const src = exhausted ? fallback : candidates[idx];
    return (
        <img
            src={src}
            alt={alt}
            loading={loading}
            className={className}
            style={style}
            onError={() => setIdx((i) => i + 1)}
            {...rest}
        />
    );
}
