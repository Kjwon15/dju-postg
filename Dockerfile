from gliderlabs/herokuish

add . /app

run herokuish buildpack build

expose 5000
cmd /start web
