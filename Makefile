GOTOOLS = \
	golang.org/x/tools/gopls@latest \
	golang.org/x/tools/cmd/goimports@latest \
    github.com/golangci/golangci-lint/cmd/golangci-lint@v1.44.2 \ 

.PHONY: install-go-tools
install-go-tools:
		@for t in $(GOTOOLS); do \
		go install $$t; \
		done
