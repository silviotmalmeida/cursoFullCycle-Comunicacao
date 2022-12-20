package main

import (
	"database/sql"
	"net"

	"github.com/silviotmalmeida/cursoFullCycle-Comunicacao/grpc/app/internal/database"
	"github.com/silviotmalmeida/cursoFullCycle-Comunicacao/grpc/app/internal/pb"
	"github.com/silviotmalmeida/cursoFullCycle-Comunicacao/grpc/app/internal/service"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"

	_ "github.com/mattn/go-sqlite3"
)

func main() {

	// definindo os dados do banco
	db, err := sql.Open("sqlite3", "./db.sqlite")
	if err != nil {
		panic(err)
	}
	defer db.Close()

	// criando o banco
	categoryDb := database.NewCategory(db)

	// criando o serviço
	categoryService := service.NewCategoryService(*categoryDb)

	// criando o servidor
	grpcServer := grpc.NewServer()

	// registrando o serviço no servidor
	pb.RegisterCategoryServiceServer(grpcServer, categoryService)
	reflection.Register(grpcServer)

	// criando a conexão tcp
	lis, err := net.Listen("tcp", ":50051")
	if err != nil {
		panic(err)
	}

	// inicializando o servidor
	if err := grpcServer.Serve(lis); err != nil {
		panic(err)
	}
}
