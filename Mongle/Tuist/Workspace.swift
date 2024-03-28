//
//  Workspace.swift
//  Config
//
//  Created by bulmang on 3/28/24.
//

import ProjectDescription

let workspace = Workspace(
  name: "Mongle",
  projects: [
    "MONGLEAPP",
    "MONGLEUI",
  ],
  schemes: [
    Scheme(
      name: "DEV-MONGLE",
      buildAction: .buildAction(targets: [.project(path: "./MONGLEAPP", target: "DEV-MONGLEAPP")]),
      runAction: .runAction(configuration: .release),
      archiveAction: .archiveAction(configuration: "DEV"),
      profileAction: .profileAction(configuration: "DEV"),
      analyzeAction: .analyzeAction(configuration: "DEV")
    ),
    Scheme(
      name: "RELEASE-MONGLE",
      buildAction: .buildAction(targets: [.project(path: "./MONGLEAPP", target: "RELEASE-MONGLEAPP")]),
      runAction: .runAction(configuration: .debug),
      archiveAction: .archiveAction(configuration: "RELASE"),
      profileAction: .profileAction(configuration: "RELASE"),
      analyzeAction: .analyzeAction(configuration: "RELASE")
    ),
    Scheme(
      name: "MASTER-MONGLE",
      buildAction: .buildAction(targets: [.project(path: "./MONGLEAPP", target: "MASTER-MONGLEAPP")]),
      runAction: .runAction(configuration: "MASTER"),
      archiveAction: .archiveAction(configuration: "MASTER"),
      profileAction: .profileAction(configuration: "MASTER"),
      analyzeAction: .analyzeAction(configuration: "MASTER")
    ),
  ],
  generationOptions: .options(autogeneratedWorkspaceSchemes: .disabled)
)
