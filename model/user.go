package model

import "time"

type User struct {
	ID uint `json:"id" gorm:"primarykey"`
	Email string`json:"eemail" gorm:"unique"`
	Password string`json:"password"`
	CreateAt time.Time`json:"created_at"`
	UpdatedAt time.Time`json:"updated_at"`
}

type UserResponse struct {
	ID uint `json:"id" gorm:"primarykey"`
	Email string`json:"eemail" gorm:"unique"`
}