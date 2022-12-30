package graph

import "github.com/silviotmalmeida/cursoFullCycle-Comunicacao/graphql/app/internal/database"

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

// foram injetados os arquivos com as funções para persistência de dados
type Resolver struct {
	CategoryDB *database.Category
	CourseDB   *database.Course
}
