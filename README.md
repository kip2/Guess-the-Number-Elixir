[English](README.md)|[日本語](README-ja.md)

<h1 align="center"> Guess the Number </h1>

A simple number-guessing game built with Elixir.

## Summary

This is a CLI application where you guess a randomly selected number between 1 and 100.  
You can play it directly from the command line.

`Gameplay Example`

```sh
========================
=== Guess The Number ===
========================

----- START GAME -------

数字を入力してください: 50
数字が大きいです
数字を入力してください: 25
数字が大きいです
数字を入力してください: 12
数字が大きいです
数字を入力してください: 
```

You can easily run it even if you don't have an Elixir/Erlang environment by using Docker.

## Install

### If you already have an Elixir/Erlang environment

This project requires **Elixir 1.16 or higher** to run.

If you already have an Elixir/Erlang environment installed, you can run the project directly.  
If not, please follow the instructions under "Using Docker" below.

### Using Docker

You can run the project without installing Elixir/Erlang by using Docker.

Please install Docker Desktop beforehand.  
(Reference: [Docker Desktop - Install guide](https://docs.docker.com/desktop/))

## Usage

### If you already have an Elixir/Erlang environment

1. Clone this repository or download the project files.

2. Move into the project directory and start the game:

```sh
# Move into the project directory
cd ./Guess-the-Number-Elixir

# Start the game
mix run -e "Main.main"
```

3. Try to guess the correct number assigned randomly between 1 and 100.  
   To quit the game midway, press `Ctrl+C` twice.

### Using Docker

1. Start Docker Desktop.

2. Clone this repository or download the project files.

3. Move into the project directory:

```sh
cd ./Guess-the-Number-Elixir
```

4. Grant execute permissions to the provided shell script and run it.  
   The script will automatically build the Docker image on the first run.  
   If the image already exists, it will skip building and directly start the container.

```sh
# Grant execute permission
chmod +x docker-run.sh
# Run the shell script
./docker-run.sh
```

5. Try to guess the correct number assigned randomly between 1 and 100.  
   To quit the game midway, press `Ctrl+C` twice.

6. After finishing the game, you can delete the created Docker image by running the provided delete script:

```sh
# Grant execute permission
chmod +x docker-image-delete.sh
# Run the shell script
./docker-image-delete.sh
```

## License

This project is licensed under the [MIT License](./LICENSE).
