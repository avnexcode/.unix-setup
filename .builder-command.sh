# React Vite Typescript Function Builder
function ReactViteTs {
    name=$1

    pnpm create vite $name --template react-ts
    cd $name
    pnpm install
    pnpm add -D tailwindcss postcss autoprefixer
    npx tailwindcss init -p

    # Remove App.css file in src folder
    rm src/App.css

    # Update content of App.tsx
    appTsxContent='
export default function App() {
    return (
        <div className="bg-blue-500 text-white p-4 w-full h-screen flex justify-center items-center flex-col gap-5">
            <h1 className="text-3xl font-bold uppercase">Avnexcode</h1>
            <h1 className="text-3xl font-bold"><span className="uppercase">Prot Prot</span> Builder</h1>
            <h1 className="text-3xl font-bold">React TS Vite x TailwindCSS Builder</h1>
        </div>
    );
}
'
    echo "$appTsxContent" > src/App.tsx

    # Update tailwind.config.js
    tailwindConfigContent='
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
'
    echo "$tailwindConfigContent" > tailwind.config.js

    # Update content of index.css in src folder
    indexCssContent='
@tailwind base;
@tailwind components;
@tailwind utilities;
'
    echo "$indexCssContent" > src/index.css

    code .
    pnpm run dev & xdg-open "http://localhost:5173"
}


# React Vite Javascript Function Builder
function ReactViteJs {
    name=$1

    pnpm create vite $name --template react
    cd $name
    pnpm install
    pnpm add -D tailwindcss postcss autoprefixer
    npx tailwindcss init -p

    # Remove App.css file in src folder
    rm src/App.css

    # Update content of App.jsx
    appJsxContent='
export default function App() {
    return (
        <div className="bg-blue-500 text-white p-4 w-full h-screen flex justify-center items-center flex-col gap-5">
            <h1 className="text-3xl font-bold uppercase">Avnexcode</h1>
            <h1 className="text-3xl font-bold"><span className="uppercase">Prot Prot</span> Builder</h1>
            <h1 className="text-3xl font-bold">React JS Vite x TailwindCSS Builder</h1>
        </div>
    );
}
'
    echo "$appJsxContent" > src/App.jsx

    # Update tailwind.config.js
    tailwindConfigContent='
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
'
    echo "$tailwindConfigContent" > tailwind.config.js

    # Update content of index.css in src folder
    indexCssContent='
@tailwind base;
@tailwind components;
@tailwind utilities;
'
    echo "$indexCssContent" > src/index.css

    code .
    pnpm run dev & xdg-open "http://localhost:5173"
}
