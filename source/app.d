import std.stdio;
import std.algorithm;

const uint BOARD_SIZE = 9;
const uint THIR_SIZE= 3;
const uint[] CELL_VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9];

/**
 * represet a 2d position
 */
struct coord {
    uint i = 0;
    uint j = 0;
}


/**
 * represent a cell on a sudoku board
 */
class SudokuCell {
    uint value = 0;
    coord pos;
    coord[] neighbors;

    this(uint i, uint j)
    {
        this.pos = coord(i, j);
    }
}


const auto LINE = "\n-------------------------";

/**
 *
 */
class SudokuBoard {
    SudokuCell[BOARD_SIZE][BOARD_SIZE] cells;

    /**
     *
     */
    this()
    {
        int i;
        // init cells
        cells.each!((i, ref row) => {
            auto rowI = cast(uint) i;
            row.each!((j, ref cell) => {
                cell = new SudokuCell(rowI, cast(uint) j);
            }());
        }());
    }

    /**
     *
     */
    void print ()
    {
        stdout.writeln(LINE);
        cells.each!((i, row) => {
            stdout.writef("|");
            row.each!((j, cell) => {
                stdout.writef(" %d", cell.value);

                if(j % 3 == 2) {
                    stdout.writef(" |");
                }
            }());

            if(i % 3 == 2) {
                stdout.writeln(LINE);
            } else {
                stdout.writeln("");
            }
        }());
    }
}


/**
 *
 */
void main()
{
    auto board = new SudokuBoard();
    board.print();
}
