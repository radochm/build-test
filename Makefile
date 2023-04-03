build:
		go build -o bin/nmath main.go

run:
		go run main.go

test:
		cd nmath && go test -coverprofile=coverage.out
fmt:
		cd nmath && go fmt ./...
vet:
		cd nmath && go vet ./...

clean:
		rm -fr bin nmath/coverage.out
