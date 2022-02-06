GOTOOLS = \
    golang.org/x/tools/gopls@latest \
    golang.org/x/tools/cmd/goimports@latest \
    github.com/golangci/golangci-lint/cmd/golangci-lint@latest \

for t in $(GOTOOLS)
do
    go install $t
done
