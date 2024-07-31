# Next Page Javascript Function Builder
function NextPageJs() {
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

    pnpm create next-app@latest "$project_name" --js --eslint --tailwind --src-dir --no-app --import-alias "@/*"
    
    cd "$project_name" || exit

    pnpm add axios @tanstack/react-query formik react-router-dom react-icons

    mkdir -p src/components/elements src/components/fragments src/components/layouts src/libs src/libs/axios src/features src/features/product src/features/user public/assets/images public/assets/videos public/assets/audios

    cat > src/pages/index.js <<EOF
export default function App() {
    return (
        <div className="bg-blue-500 text-white p-4 w-full h-screen flex justify-center items-center flex-col gap-5">
            <h1 className="text-3xl font-bold uppercase">Avnexcode</h1>
            <h1 className="text-3xl font-bold"><span className="uppercase">Prot Prot</span> Builder</h1>
            <h1 className="text-3xl font-bold">Next JS Page Router x TailwindCSS Builder</h1>
        </div>
    );
}
EOF

    cat > src/styles/globals.css <<EOF
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

    code .
    xdg-open "http://localhost:3000" 2>/dev/null || open "http://localhost:3000"
    pnpm run dev
}

# Next Page Typescript Function Builder
function NextPageTs() {
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

    pnpm create next-app@latest "$project_name" --ts --eslint --tailwind --src-dir --no-app --import-alias "@/*"
    
    cd "$project_name" || exit

    pnpm add axios @tanstack/react-query formik react-router-dom react-icons

    mkdir -p src/components/elements src/components/fragments src/components/layouts src/libs src/libs/axios src/features src/features/product src/features/user src/types public/assets/images public/assets/videos public/assets/audios

    cat > src/pages/index.tsx <<EOF
export default function App() {
    return (
        <div className="bg-blue-500 text-white p-4 w-full h-screen flex justify-center items-center flex-col gap-5">
            <h1 className="text-3xl font-bold uppercase">Avnexcode</h1>
            <h1 className="text-3xl font-bold"><span className="uppercase">Prot Prot</span> Builder</h1>
            <h1 className="text-3xl font-bold">Next TS Page Router x TailwindCSS Builder</h1>
        </div>
    );
}
EOF

    cat > src/styles/globals.css <<EOF
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

    code .
    xdg-open "http://localhost:3000" 2>/dev/null || open "http://localhost:3000"
    pnpm run dev
}