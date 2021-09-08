gen:
	protoc --proto_path=proto proto/*.proto --go_opt=paths=source_relative --go_out=:pb 
clean:
	rm pb/*.go 
run:
	go run main.go
test:
	go test -cover -race ./...