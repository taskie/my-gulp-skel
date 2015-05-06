export default class Color {
    constructor(public r: number, public g: number, public b: number, public a?: number) {
        if (typeof a === "undefined") this.a = 1;
    }
    toString() {
	let rgba = [this.r, this.g, this.b, this.a]
        return `rgba(${rgba.join(",")})`;
    }
    static fromString(s: string) {
        if (s[0] === "#") s = s.slice(1);
        let r = parseInt(s.slice(0, 2), 16);
        let g = parseInt(s.slice(2, 4), 16);
        let b = parseInt(s.slice(4, 6), 16);
        return new Color(r, g, b)
    }
}
