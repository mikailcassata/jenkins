variable "tocount" {
  default = 3 #number of docker countainers
}


variable "ct-name" {
  default = ["Brussel","Tokyo","New_York"]# names of docker countainers
}
variable "ct-image" {
  default = ["clock:v2","clock:v2","clock:v2"] #images of docker countainers
}
variable "ct-port" {
  default = [8000,8001,8002] #external port of docker countainers
}
variable "ct-tz" {
  default = ["TZ=Europe/Brussels","TZ=Asia/Tokyo","TZ=America/New_York"]# timezone of of docker countainers
}