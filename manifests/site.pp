import "example"
import "dockertest"
node defaut {
  notify {' This is the master environment': }
  include example
}
