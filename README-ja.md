[English](README.md)|[日本語](README-ja.md)

<h1 align="center"> Guess the Number </h1>

Elixir製の数字あてゲームです。

## Summary

1から100の間でランダムに選ばれた数字を当てるCLIアプリケーションです。
コマンドライン上で起動し、遊ぶことができます。

`ゲームのイメージ`

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

なお、Elixir/Erlang環境がなくてもDockerを使って簡単に実行できるようになっています。

## Install

### Elixir/Erlang環境がある場合

このプロジェクトはElixir`1.16`以上で動作します。

Elixir/Erlang環境がすでにある場合は、そのままプロジェクトを動かすことができます。

Elixir/Erlang環境がない場合は、以下の「Dockerを利用する場合」の手順に従って下さい。

### Dockerを利用する場合

Elixir/Erlangをインストールせず実行できるよう、Docker対応を行っています。

事前にDocker Desktopをインストールして下さい。
(参考：[Docker Desktop - Install guide](https://docs.docker.com/desktop/))

## Usage

### Elixir/Erlang環境がある場合

1. 本プロジェクトを`git clone`、もしくはファイルダウンロードして入手します。

2. プロジェクトディレクトリに移動し、起動します。

```sh
# プロジェクトディレクトリに移動
cd ./Guess-the-Number-Elixir

# ゲームの起動
mix run -e "Main.main"
```

3. 1から100までの間でランダムに割り当てられた正解の数字を入力してください。
   ゲームを途中で終了したい場合は、`Ctrl+C`を2回入力して下さい。

### Dockerを利用する場合

1. DockerDesktopを起動します。

2. 本プロジェクトを`git clone`、もしくはファイルダウンロードして入手します。

3. プロジェクトディレクトリに移動します。

```sh
# プロジェクトディレクトリに移動
cd ./Guess-the-Number-Elixir
```

4. シェルスクリプトに実行権限を与えて、実行します。
   初回起動時はDockerイメージを自動ビルドし、すでにイメージが存在する場合は起動のみ行います。

```sh
# 実行権限付与
chmod +x docker-run.sh
# シェルスクリプトの実行
./docker-run.sh
```

5. 1から100までの間でランダムに割り当てられた正解の数字を入力してください。
   ゲームを途中で終了したい場合は、`Ctrl+C`を2回入力して下さい。


6. ゲームを終えたら、Dockerのイメージファイルを削除できます。
   削除スクリプトを実行して下さい。

```sh
# 実行権限付与
chmod +x docker-image-delete.sh
# シェルスクリプトの実行
./docker-image-delete.sh
```

## License

This project is licensed under the [MIT License](./LICENSE).

