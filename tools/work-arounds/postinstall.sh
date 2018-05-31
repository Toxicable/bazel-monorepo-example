
# node_modules/angular-oauth2-oidc/deps.d.ts(1,13): error TS2403: Subsequent variable declarations must have the same type.  
# Variable 'require' must be of type 'NodeRequire', but here has type 'any'.
echo 'declare var require: NodeRequire;' > node_modules/angular-oauth2-oidc/deps.d.ts


# node_modules/symbol-observable/index.d.ts(6,14): error TS2687: All declarations of 'observable' must have identical modifiers.
echo 'declare const observableSymbol: symbol;
export default observableSymbol;

// declare global {
//   export interface SymbolConstructor {
//     readonly observable: symbol;
//   }
// }

export interface Symbol {
  readonly [Symbol.observable]: symbol;
}
' > node_modules/symbol-observable/index.d.ts