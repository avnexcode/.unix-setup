#!/bin/bash

declare -a dirs=(
    "./public/assets/image"
    "./public/assets/video"
    "./public/assets/audio"
    "./template"
    "./src/css"
    "./src/js"
    "./module"
    "./views/dashboard/products"
    "./views/dashboard/products/create"
    "./views/dashboard/products/update"
    "./views/dashboard/products/delete"
    "./views/dashboard/customers"
    "./views/dashboard/customers/create"
    "./views/dashboard/customers/update"
    "./views/dashboard/customers/delete"
    "./views/beranda"
    "./views/beranda/payment"
    "./views/beranda/cart"
    "./views/beranda/profile"
)

declare -a files=(
    "./src/css/main.css"
    "./src/js/app.js"
    "./module/function.php"
    "./views/dashboard/products/index.php"
    "./views/dashboard/products/create/index.php"
    "./views/dashboard/products/update/index.php"
    "./views/dashboard/products/delete/index.php"
    "./views/dashboard/customers/index.php"
    "./views/dashboard/customers/create/index.php"
    "./views/dashboard/customers/update/index.php"
    "./views/dashboard/customers/delete/index.php"
    "./views/beranda/index.php"
    "./views/beranda/payment/index.php"
    "./views/beranda/cart/index.php"
    "./views/beranda/profile/index.php"
)

function phpSassProject() {
    local project_name=$1
    mkdir -p $project_name
    cd $project_name

    touch index.php README.md

    echo "# Project Name" >> README.md
    echo "This is a project structure by MFNA." >> README.md

    for dir in "${dirs[@]}"; do
        mkdir -p "$dir"
    done

    mkdir -p ./src/sass

    for file in "${files[@]}"; do
        touch "$file"
    done

    touch ./src/sass/main.scss

    pnpm init -p

    cat << EOF > index.php
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Font Awesome Cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- CSS -->
    <link rel="stylesheet" href="./src/css/main.css" />
    <!-- JS -->
    <script src="./src/js/app.js" defer></script>
    <title>Disorganized</title>
</head>

<body>
    <div id="root">
        <div class="intro">
            <h1>Crot</h1>
            <span>By Avnexeed</span>
        </div>
        <div class="wrapper">
            <div class="display">
                <div id="time"></div>
            </div>
            <span></span>
            <span></span>
        </div>
    </div>
</body>

</html>
EOF

    cat << EOF > ./src/sass/main.scss
@import url("https://fonts.googleapis.com/css2?family=Caveat&family=Onest:wght@500&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

// Responsive Breakpoint
\$media-sm: 640px;
\$media-md: 768px;
\$media-lg: 1024px;
\$media-xl: 1280px;

// Font Variable
\$caveat: "Caveat", cursive;
\$poppins: "Poppins", sans-serif;
\$onest: "Onest", sans-serif;

html,
body {
    font-family: \$poppins;
    animation: rainbow 10s ease alternate infinite forwards;
}

button {
    cursor: pointer;
}

div#root {
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    div.intro {
        display: flex;
        h1 {
            font-size: 10rem;
        }
        span {
            font-size: 2rem;
            margin-top: 140px;
        }
    }
    div.wrapper {
        height: 100px;
        width: 360px;
        position: relative;
        background: linear-gradient(135deg, #14ffe9, #ffeb3b, #ff00e0);
        border-radius: 10px;
        cursor: default;
        animation: animate 1.5s linear infinite;

        .display,
        span {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .display {
            z-index: 999;
            height: 85px;
            width: 345px;
            background: #1b1b1b;
            border-radius: 6px;
            text-align: center;

            #time {
                line-height: 85px;
                color: #fff;
                font-size: 50px;
                font-weight: 600;
                letter-spacing: 1px;
                background: linear-gradient(135deg, #14ffe9, #ffeb3b, #ff00e0);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                animation: animate 1.5s linear infinite;
            }
        }

        @keyframes animate {
            100% {
                filter: hue-rotate(360deg);
            }
        }

        span {
            height: 100%;
            width: 100%;
            border-radius: 10px;
            background: inherit;
        }

        span:first-child {
            filter: blur(7px);
        }

        span:last-child {
            filter: blur(20px);
        }
    }
}

@keyframes rainbow {
    5% {
        background: red;
    }
    10% {
        background: orange;
    }
    15% {
        background: yellow;
    }
    20% {
        background: green;
    }
    25% {
        background: blue;
    }
    30% {
        background: indigo;
    }
    35% {
        background: violet;
    }
    40% {
        background: red;
    }
    45% {
        background: orange;
    }
    50% {
        background: yellow;
    }
    55% {
        background: green;
    }
    60% {
        background: blue;
    }
    65% {
        background: indigo;
    }
    70% {
        background: violet;
    }
    75% {
        background: red;
    }
    80% {
        background: orange;
    }
    85% {
        background: yellow;
    }
    90% {
        background: green;
    }
    95% {
        background: blue;
    }
    100% {
        background: indigo;
    }
}
EOF
}

php_sass_project "my-project"
