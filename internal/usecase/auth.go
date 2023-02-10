package usecase

import (
	"github.com/muhangga/internal/entity"
	"github.com/muhangga/internal/repository"
)

type AuthUsecase interface {
	Login(r entity.LoginRequest) (entity.User, error)
	Register(r entity.RegisterRequest) (entity.User, error)
}

type authUsecase struct {
	authRepository repository.AuthRepository
}

func NewUserUsecase(authRepository repository.AuthRepository) *authUsecase {
	return &authUsecase{
		authRepository: authRepository,
	}
}