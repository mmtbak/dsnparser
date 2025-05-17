SHELL := /bin/bash
GO := go
GOOS ?= $(shell uname -s | tr [:upper:] [:lower:])
GOTEST ?= ${GO} test
GOARCH ?= $(shell go env GOARCH)
GOPATH ?= $(shell go env GOPATH)

.PHONY: lint
lint:
	${GOPATH}/bin/golangci-lint run ./...
.PHONY: test
test:
	@echo "start unittest........"
	${GOTEST} -v ./...