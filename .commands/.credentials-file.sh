credentials() {
    local username="$1"
    local password="$2"
    local location="$3"
    local count="$4"

    # Define valid credentials
    local valid_username="axnvee"
    local valid_password="188216"

    # Check if credentials are correct
    if [[ "$username" == "$valid_username" && "$password" == "$valid_password" ]]; then
        case "$location" in
            "secret")
                echo -e "\e[32mAccess granted\e[0m"
                for ((i = 1; i <= count; i++)); do
                    xdg-open "/home/axnvee/Axnvee/Code"
                done
                ;;
            "movie")
                echo -e "\e[32mAccess granted\e[0m"
                for ((i = 1; i <= count; i++)); do
                    xdg-open "E:/Axnvee/Movies"
                done
                ;;
            "code")
                echo -e "\e[32mAccess granted\e[0m"
                for ((i = 1; i <= count; i++)); do
                    xdg-open "D:/Code"
                done
                ;;
            *)
                echo -e "\e[31mInvalid location. Access denied.\e[0m"
                ;;
        esac
    else
        echo -e "\e[31mAccess denied\e[0m"
    fi
}

# Function to prompt user for input and call credentials function
located() {
    read -sp "username: " username
    echo
    read -sp "password: " password
    echo
    read -sp "location: " location
    echo
    read -sp "count: " count

    # Call credentials function with user input
    credentials "$username" "$password" "$location" "$count"
}