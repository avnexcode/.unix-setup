# React Vite Typescript Function Builder
function ReactViteTs() {
    local project_name

    if [ -z "$1" ]; then
        read -p "Please enter the project name: " project_name
    else
        project_name="$1"
    fi

    if [ -z "$project_name" ]; then
        echo "Project name cannot be empty."
        return 1
    fi

    pnpm create vite "$project_name" --template react-ts
    
    cd "$project_name" || exit
    
    pnpm install
    pnpm add -D tailwindcss postcss autoprefixer
    pnpm add axios @tanstack/react-query formik react-router-dom @types/react-router-dom react-icons

    npx tailwindcss init -p

    mkdir -p src/components/elements src/components/fragments src/components/layouts src/libs src/features src/types src/pages

    rm src/App.css

    cat > src/App.tsx <<EOF
export default function App() {
    return (
        <div className="bg-blue-500 text-white p-4 w-full h-screen flex justify-center items-center flex-col gap-5">
            <h1 className="text-3xl font-bold uppercase">Avnexcode</h1>
            <h1 className="text-3xl font-bold"><span className="uppercase">Prot Prot</span> Builder</h1>
            <h1 className="text-3xl font-bold">React TS Vite x TailwindCSS Builder</h1>
        </div>
    );
}
EOF

    cat > tailwind.config.js <<EOF
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
EOF

    cat > src/index.css <<EOF
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

    code .
    xdg-open "http://localhost:5173" 2>/dev/null || open "http://localhost:5173"
    pnpm run dev
}

# React Vite Javascript Function Builder
function ReactViteJs() {
    local project_name

    if [ -z "$1" ]; then
        read -p "Please enter the project name: " project_name
    else
        project_name="$1"
    fi

    if [ -z "$project_name" ]; then
        echo "Project name cannot be empty."
        return 1
    fi

    pnpm create vite "$project_name" --template react
    
    cd "$project_name" || exit
    
    pnpm install
    pnpm add -D tailwindcss postcss autoprefixer
    pnpm add axios @tanstack/react-query formik react-router-dom react-icons

    npx tailwindcss init -p

    mkdir -p src/components/elements src/components/fragments src/components/layouts src/libs src/features src/types src/pages

    rm src/App.css

    cat > src/App.jsx <<EOF
export default function App() {
    return (
        <div className="bg-blue-500 text-white p-4 w-full h-screen flex justify-center items-center flex-col gap-5">
            <h1 className="text-3xl font-bold uppercase">Avnexcode</h1>
            <h1 className="text-3xl font-bold"><span className="uppercase">Prot Prot</span> Builder</h1>
            <h1 className="text-3xl font-bold">React JS Vite x TailwindCSS Builder</h1>
        </div>
    );
}
EOF

    cat > tailwind.config.js <<EOF
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './index.html',
    './src/**/*.{js,ts,jsx,tsx}',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOF
    # Mengubah konten index.css pada folder src
    cat > src/index.css <<EOF
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

    code .
    xdg-open "http://localhost:5173" 2>/dev/null || open "http://localhost:5173"
    pnpm run dev
}