docker run --rm -it -v "$(Get-Location):/src/homepage" -p 1313:1313 klakegg/hugo:alpine serve -D --poll 700ms -s /src/homepage