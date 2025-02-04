.PHONY: generate

generate:
	protoc -I . -I third_party \
    --go_out=. --go_opt=paths=import \
    --go-grpc_out=. --go-grpc_opt=paths=import \
    --grpc-gateway_out=. --grpc-gateway_opt=paths=import \
    api/protobuf-spec/*.proto
