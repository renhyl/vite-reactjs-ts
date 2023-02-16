<img width="105" alt="Screenshot 2023-02-16 at 17 35 36" src="https://user-images.githubusercontent.com/47245766/219429515-0e89da43-d841-465c-b67d-32d4d598c8c3.png"><img width="95" alt="Screenshot 2023-02-16 at 17 35 51" src="https://user-images.githubusercontent.com/47245766/219429536-9cbd9e8e-5843-4173-b5a7-1981c6bb1777.png"><img width="107" alt="Screenshot 2023-02-16 at 17 37 29" src="https://user-images.githubusercontent.com/47245766/219429812-a844ae02-02ac-4a3a-83f1-dc07459d9d49.png"><img width="179" alt="Screenshot 2023-02-16 at 17 38 10" src="https://user-images.githubusercontent.com/47245766/219429956-85ea0d51-fc42-42bd-a3ac-6123da834cc7.png"><img width="212" alt="Screenshot 2023-02-16 at 17 38 52" src="https://user-images.githubusercontent.com/47245766/219430147-9d4394e7-0c83-4114-99f9-b0194f884a0f.png"><img width="133" alt="Screenshot 2023-02-16 at 18 08 42" src="https://user-images.githubusercontent.com/2118334/219437617-6b416c7e-e964-429c-bcfb-5b7fe185070c.png">


<img width="1439" alt="Screenshot 2023-02-16 at 17 27 28" src="https://user-images.githubusercontent.com/47245766/219429065-056a07cb-3bd7-4226-b5c2-482a0ef6ea54.png">

# :yellow_circle: Mission Statment :yellow_circle:

:smiling_face_with_three_hearts: [Docker'ized](https://www.docker.com/) dev project, that just works, has 0 configuration, offers hot reloading, uses best standards and pratices*
- [ViteJS](https://vitejs.dev/) | [Why ViteJS?](https://vitejs.dev/guide/why.html) repo: https://github.com/vitejs/vite
> Vite.js is a rapid development tool for modern web projects. It focuses on speed and performance by improving the development experience. Vite uses native browser ES imports to enable support for modern browsers without a build process.

- [ReactJS](https://reactjs.org/), repo: https://github.com/facebook/react
> A JavaScript library for building user interfaces
- [TypeScript](https://www.typescriptlang.org/), repo: https://github.com/microsoft/TypeScript
> TypeScript is JavaScript with syntax for types.
- [PNPM](https://pnpm.io/), repo: https://github.com/pnpm/pnpm
> Fast, disk space efficient package manager.
- [ESLint](https://eslint.org/), repo: https://github.com/eslint/eslint
> ESLint statically analyzes your code to quickly find problems. It is built into most text editors and you can run ESLint as part of your continuous integration pipeline.

- [VSCode Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers) (optional)
> The Dev Containers extension lets you use a Docker container as a full-featured development environment.

![image](https://user-images.githubusercontent.com/47245766/219430259-e885386a-bf34-485f-aaf2-cbb283f6dbb2.png)


# :yellow_circle: Key Notes :yellow_circle:
- Dockerfile that utilizes Multi Stage build process; ref: https://docs.docker.com/build/building/multi-stage/

- VSCode Dev Containers support (optional); ref: https://code.visualstudio.com/docs/devcontainers/containers

- PNPM rather than NPM; ref: https://pnpm.io/

- ESLint

- Wisdom from Docker Captain [Bret Fisher](https://github.com/BretFisher) Node.js + Docker good defaults: https://github.com/BretFisher/node-docker-good-defaults

NOTE: you don't have to touch /node_modules on the host, Docker container will handle install and update and respect any overrides. If you don't use VSCode's "Dev Container" to develop then all you need to do after updating modules/package.json is rebuild image && restart with `docker-compose up --build`



# :yellow_circle: Get Started :yellow_circle:

### VSCode users:
```
git clone git@github.com:renhyl/vite-reactjs-ts.git
```
open dir in VSCode and "Dev Containers: Reopen in Container" from Command Palette

You can develop by opening your VSCode and launching/connecting to Dev Container. (Requires VSCode extension "Dev Containers", "Remote Development")

### For non-VSCode users:
You can run the container from your project's root dir with:

```
docker run -it --rm -v ${PWD}:/app -v /app/node_modules -p 5173:5173 damianboni/vite:react-ts
```


alternatively you can:

```
docker-compose up --build
```
ensure you always use `--build` to sync/update /node_modules

--- 

You should be able to browse the homepage of the project by navigating to: [`http://localhost:5173/`](http://localhost:5173/)

License: MIT
