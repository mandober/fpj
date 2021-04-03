// --------------------------------------------------------------------- import
import curry from '../f/curry.js'

// ----------------------------------------------------------------- definition
// drop :: Int -> [a] -> [a]
const drop = n => ([x, ...xs]) =>
    x === undefined
        ? []
        : n < 1
            ? [x, ...xs]
            : [...drop(n-1)(xs)]
;

// --------------------------------------------------------------------- export
export default drop;


// ---------------------------------------------------------------------- check
/*
console.log(
    '\n',
    drop (3) ( [1,3,5,7,2,4,6,8] ), '\n',
    drop (3) ( [1] ), '\n',
    drop (3) ( [] ), '\n',
)
*/
