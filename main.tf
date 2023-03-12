terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}

provider "docker" {
  # Configuration options
}

resource "docker_image" "nginx"{
  name = "nginx:1.23.3" # найти и скачать образ
  keep_locally = false # образ будет удален из локально xранилища при destroy operation

}

resource "docker_container" "nginx" {
  image = docker_image.nginx.1.23.3
  name = "web_server"
  ports {
    internal = 80
    external = 8000

   }

  }


}