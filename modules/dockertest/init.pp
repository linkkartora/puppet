class docker {
  include dockers::buildnginx
  include dockers::run
  include dockers::image
  include dockers::many
}
