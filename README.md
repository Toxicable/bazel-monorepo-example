This is a small example of how you can make the migration from a many-repo with the CLI + NPM packages to a monorepo with CLI + Bazel  

It uses Bazel to
 - build/publish libs
 - build/run Nodejs apps

It uses the Angular CLI to 
 - build/run Angular apps

The advantage here is that migration is very easy since most of your CLI config carries over.  
And by using Bazel you can still support apps that are yet to migrate by deploying packages to NPM.  

[/apps/app1](/apps/app1) is an example of a nodejs api server

[/apps/app2](/apps/app2) is an Angular CLI app

you can run the both of them together with `yarn dev` (`concurrently 'ng serve' 'ibazel run apps/app1:run'`)  
Libs can be published with `./publish-libs.sh`

[/apps/app3](/apps/app3) is an Angular app but built with Bazel for comparison

This repo also showcases some of the work arounds that may be encounted.
These are be found in   
[/tools/work-arounds/](/tools/work-arounds/)  
[/tsconfig.npm.json](/tsconfig.npm.json)
