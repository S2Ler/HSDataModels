workflow "HSDataModels Linux Build" {
  on = "push"
  resolves = ["Swift Package Test"]
}

action "Swift Package Build" {
  uses = "diejmon/HSDataModels@master"
  runs = "swift build --configuration release"
}

action "Swift Package Test" {
  uses = "diejmon/HSDataModels@master"
  runs = "swift test --parallel"
  needs = ["Swift Package Build"]
}
