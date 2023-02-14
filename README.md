# :yellow_circle: Mission Statment :yellow_circle:

:smiling_face_with_three_hearts: [Docker'ized](https://www.docker.com/) dev project, that just works, has 0 configuration, offers hot reloading, uses best standards and pratices*
- [ViteJS](https://vitejs.dev/) | [Why ViteJS?](https://vitejs.dev/guide/why.html)
> Vite.js is a rapid development tool for modern web projects. It focuses on speed and performance by improving the development experience. Vite uses native browser ES imports to enable support for modern browsers without a build process.

- [ReactJS](https://reactjs.org/)
> A JavaScript library for building user interfaces
- [TypeScript](https://www.typescriptlang.org/)
> TypeScript is JavaScript with syntax for types.
- [PNPM](https://pnpm.io/)
> "Fast, disk space efficient package manager".

- [VSCode Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers) (optional)
> The Dev Containers extension lets you use a Docker container as a full-featured development environment. 

# :yellow_circle: Key Notes :yellow_circle:
- Dockerfile that utilizes Multi Stage build process; ref: https://docs.docker.com/build/building/multi-stage/

- VSCode Dev Containers support (optional); ref: https://code.visualstudio.com/docs/devcontainers/containers

- PNPM rather than NPM; ref: https://pnpm.io/

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
