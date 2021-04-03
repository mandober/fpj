// ---------------------------------------------------------------------- about
// Integer division

// --------------------------------------------------------------------- import
import curry from '../f/curry.js';

// --------------------------------------------------------------------- define
const intdiv = curry((a, b) => 
    b === 0
        ? Infinity
        : Math.trunc(a/b)
);

// --------------------------------------------------------------------- export
export default intdiv;


// ---------------------------------------------------------------------- check
console.log('\n',
    intdiv(9,2), '\n',
    intdiv(-9,2), '\n',
)
