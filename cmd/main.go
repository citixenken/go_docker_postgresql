package main

import (
	"github.com/citixenken/go_docker_postgresql/database"
	"github.com/gofiber/fiber/v2"
)
func main() {
    database.ConnectDb()

    app := fiber.New()

    app.Get("/", func(c *fiber.Ctx) error {
        return c.SendString("Hello, @citixenken!")
    })

    app.Listen(":3000")
}