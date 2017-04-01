import std.stdio;
import std.algorithm;

const uint BOARD_SIZE = 9;
const uint THIR_SIZE= 3;

struct coord {
    uint i = 0;
    uint j = 0;
}

class SudokuCell {
    coord pos;
    coord[] neighbors;

    this(uint i, uint j)
    {
        this.pos = coord(i, j);
    }
}

void main() {
    auto a = new SudokuCell(2, 3);
    auto b = coord(2, 3);
    auto c = coord(2, 3);
    auto arr = [b, c];

    stdout.writeln(arr.uniq);
}
