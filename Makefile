.PHONY: tidy

tidy:
	@echo "Cleaning up..."
	@go mod tidy
	@rm -f ./bin/*
