# Create a docker container
resource "docker_container" "foo" {
  count = var.tocount #number of docker countainers
  image = var.ct-image[count.index] #image of docker countainer
  name  = var.ct-name[count.index] #name of docker countainer
  ports{
    internal = 80 #port inside of docker container
    external = var.ct-port[count.index] #port outside of docker countainer
  }
  env = [var.ct-tz[count.index]] #timezone of docker countainer
}