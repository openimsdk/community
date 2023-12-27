.PHONY: cover lint format generate tidy

cover:
	go test ./... -cover

lint:
	golangci-lint run

format:
	gofmt -s -w .

generate:
	echo "Add commands to generate necessary files"

tidy:
	go mod tidy
