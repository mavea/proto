PATH_TO_ROOT_PROJECT = $(PWD)

PATH_TO_PROTO_FILES = ./proto
PATH_TO_GENERATED_FILES = $(PATH_TO_ROOT_PROJECT)/generate

install:
	sudo apt  install protobuf-compiler
	sudo apt  install protoc-gen-go
	sudo apt  install protoc-gen-go-grpc


protobuf-go:
	protoc -I proto $(PATH_TO_PROTO_FILES)/*.go.proto --go_out=$(PATH_TO_GENERATED_FILES)/go --go_opt=paths=source_relative --go-grpc_out=$(PATH_TO_GENERATED_FILES)/go --go-grpc_opt=paths=source_relative