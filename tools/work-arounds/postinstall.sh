echo 'declare var require: NodeRequire;' > node_modules/angular-oauth2-oidc/deps.d.ts

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