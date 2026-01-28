# 儿童培训管理 iOS App（SwiftUI 原型）

这是一个用于儿童培训机构管理的 iOS 应用原型，涵盖课程排课、学员管理、教练安排、签到记录与通知提醒等核心流程。项目采用 SwiftUI + MVVM 的结构组织，便于后续在 Xcode 中完善功能与接入后端。

## 主要功能
- 课程管理：课程信息、排课时间、授课教练与容量。
- 学员管理：学员档案、家长联系方式、报名课程。
- 签到管理：课程签到、缺勤标记与备注。
- 通知提醒：课程开始提醒、学员缺勤提醒。

## 结构说明
```
ChildTrainingManager/
  Sources/ChildTrainingManager/
    ChildTrainingManagerApp.swift
    Models/
    ViewModels/
    Views/
    Resources/
```

## 下一步建议
- 接入本地持久化（如 CoreData/SQLite）。
- 增加用户权限（管理员/教练/家长）。
- 接入消息推送（APNs）。
- 接入后端 API（课程、学员、签到）。
