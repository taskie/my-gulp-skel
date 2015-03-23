function color(r: number, g: number, b: number): Float32Array
{
    return new Float32Array([r, g, b, 255].map(x => x / 255));
}
export var base03 = color(0, 43, 54);
export var base02 = color(7, 54, 66);
export var base01 = color(88, 110, 117);
export var base00 = color(101, 123, 131);
export var base0 = color(131, 148, 150);
export var base1 = color(147, 161, 161);
export var base2 = color(238, 232, 213);
export var base3 = color(253, 246, 227);
export var yellow = color(181, 137, 0);
export var orange = color(203, 75, 22);
export var red = color(220, 50, 47);
export var magenta = color(211, 54, 130);
export var violet = color(108, 113, 196);
export var blue = color(38, 139, 210);
export var cyan = color(42, 161, 152);
export var green = color(133, 153, 0);
