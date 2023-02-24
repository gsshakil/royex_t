## Getting Started
1. Clone the repo
2. run 
    ```sh
        flutter pub get
    ```
3. Create a .env file in the root of the project and write the following:
    ```sh
        SHOPIFY_KEY='YOUR_API_KEY'
    ```


4. run the following command in terminal to generate the api key
    ```sh
        flutter pub run build_runner build --delete-conflicting-outputs
    ```
5. Run the app on device or emulator