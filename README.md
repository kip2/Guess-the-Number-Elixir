# Guess The Number

Elixir製の数字あてゲームです。

## Summary

Elixir製の数字あてゲームです。

正解の数字として、1から100のランダムの数字が割り当てられます。

正解の数字をあてて下さい。

CLIアプリケーションですので、コマンドラインから実行して遊んで下さい。

## Install

### Elixir/Erlang環境が用意できる人向け

本プロジェクトを動作するために必要なElixirのバージョンは`1.16`となっています。

`1.16`以上のバージョンが動く環境を準備してください。

当プロジェクトはElixir/Erlang環境がない人向けにDockerによる実行環境を用意しています。

Dockerを用いて実行したい場合は、次の「Elixir/Erlang環境が無い人向け」の説明を読んでください。

### Elixir/Erlang環境が無い人向け

本来は実行にElixir/Erlang環境が必要ですが、環境をDockerで用意したため、Elixir/Erlangの事前のインストールはは不要です。

起動にDockerが必須となるため、Dockerのインストールを行ってください。

[Docker Desktop - Intall doc](https://docs.docker.com/desktop/)

## Usage

1. まずDockerDesktopを起動してください。

2. 本プロジェクトを`git clone`、もしくはファイルダウンロードして入手してください。

3. ダウンロードしたプロジェクトディレクトリに移動します。

```sh
# プロジェクトディレクトリに移動
cd ./Guess-the-Number-Elixir
```

4. シェルスクリプトに実行権限を与えて実行してください。実行すると、自動でDocker imageを作成・起動を行います(なお、Docker imageがすでに作成済みの場合は起動のみ行います)。

```sh
# 実行権限付与
chmod +x docker-run.sh
# シェルスクリプトの実行
./docker-run.sh
```

5. 1から100のなかでランダムに正解の数字が割り当てられます。正解の数字を入力してください。

   ゲームを途中で終える場合は、`Ctrl+C`を2回入力して下さい。

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

6. ゲームを終えたら、Dockerのイメージファイルを削除しましょう。
   削除用のシェルスクリプトを用意しましたので、実行権限を与えて実行して下さい。
   Docker imageが自動で削除されます。

```sh
# 実行権限付与
chmod +x docker-image-delete.sh
# シェルスクリプトの実行
./docker-iamge-delete.sh
```

## License

MIT LICENSE