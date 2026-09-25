import LuxImg from "./LuxImg";

// Real client/partner logos this business has actually worked with —
// scrolling strip. Add or remove entries here; each `name` must match a
// file in backend/static/img/generated/ (see download-client-logos.ps1).
const CLIENTS = [
    { name: "client-hannah-joseph", label: "Hannah Joseph Hospital" },
    { name: "client-dwarka-palace", label: "Dwarka Palace Convention Center" },
    { name: "client-chellam-saraswathy", label: "V.S.Chellam Saraswathy Maaligai" },
    { name: "client-bharathi-infinity", label: "Bharathi Infinity Hospital" },
    { name: "client-anjali", label: "Anjali" },
    { name: "client-star", label: "Star" },
    { name: "client-union", label: "Union" },
    { name: "client-smj", label: "SMJ" },
    { name: "client-royal", label: "Royal" },
    { name: "client-meenakshi", label: "Meenakshi" },
];

export default function ClientLogos() {
    const row = [...CLIENTS, ...CLIENTS];
    return (
        <section className="py-14 md:py-20 bg-ivory overflow-hidden relative" data-testid="client-logos">
            <div className="max-w-[1440px] mx-auto px-6 md:px-10 mb-8 text-center">
                <p className="overline justify-center flex"><span className="hairline" /> Trusted By</p>
                <h3 className="mt-3 text-lg md:text-xl text-charcoal/70 font-medium">
                    Companies & institutions we've worked with
                </h3>
            </div>
            <div className="absolute inset-y-0 left-0 w-20 md:w-32 bg-gradient-to-r from-ivory to-transparent z-10 pointer-events-none" />
            <div className="absolute inset-y-0 right-0 w-20 md:w-32 bg-gradient-to-l from-ivory to-transparent z-10 pointer-events-none" />
            <div className="marquee-track" style={{ animationDuration: "26s" }}>
                {row.map((c, i) => (
                    <div key={i} className="shrink-0 mx-6 md:mx-10 h-14 md:h-16 flex items-center opacity-80 hover:opacity-100 transition">
                        <LuxImg name={c.name} alt={c.label} className="h-full w-auto object-contain" hideOnMissing />
                    </div>
                ))}
            </div>
        </section>
    );
}
