gen:
	protoc --proto_path=proto proto/*.proto \
	--go_opt=paths=source_relative --go-grpc_opt=paths=source_relative \
	--go_out=:pb --go-grpc_out=:pb

clean:
	rm pb/*.go 

run:
	go run main.go

test:
	go test -v -cover -race ./...

server:
	go run cmd/server/main.go --port 8080

client:
	go run cmd/client/main.go --address 0.0.0.0:8080
