This is simple template repo to get your project started including:

Docker image: https://hub.docker.com/repository/docker/damianboni/vite/general

PNPM: https://pnpm.io/

ViteJS: https://vitejs.dev/

ReactJS: https://reactjs.org/

TypeScript: https://www.typescriptlang.org/


You can run the container from your project's root dir with:

`docker run -it --rm -v ${PWD}:/app -v /app/node_modules -p 5173:5173 damianboni/vite:react-ts`

alternatively you can:

`docker-compose build`

and

`docker-compose up`

to start http server in local dev

You should be able to browse the homepage of the project by navigating to: `http://localhost:5173/`

License: MIT