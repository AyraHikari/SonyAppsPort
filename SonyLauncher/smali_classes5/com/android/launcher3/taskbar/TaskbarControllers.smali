.class public Lcom/android/launcher3/taskbar/TaskbarControllers;
.super Ljava/lang/Object;
.source "TaskbarControllers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
    }
.end annotation


# instance fields
.field private mAreAllControllersInitialized:Z

.field private mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

.field private final mPostInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

.field public final navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field public final navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

.field public final rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

.field public final stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

.field public final taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

.field public final taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

.field public final taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public final taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

.field public final taskbarEduController:Lcom/android/launcher3/taskbar/TaskbarEduController;

.field public final taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

.field public final taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

.field public final taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

.field public final taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

.field public final taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

.field public final taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

.field public final taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

.field public uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/systemui/shared/rotation/RotationButtonController;Lcom/android/launcher3/taskbar/TaskbarDragLayerController;Lcom/android/launcher3/taskbar/TaskbarViewController;Lcom/android/launcher3/taskbar/TaskbarScrimViewController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Lcom/android/launcher3/taskbar/StashedHandleViewController;Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/taskbar/TaskbarEduController;Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V
    .locals 16
    .param p1, "taskbarActivityContext"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "taskbarDragController"    # Lcom/android/launcher3/taskbar/TaskbarDragController;
    .param p3, "navButtonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .param p4, "navbarButtonsViewController"    # Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
    .param p5, "rotationButtonController"    # Lcom/android/systemui/shared/rotation/RotationButtonController;
    .param p6, "taskbarDragLayerController"    # Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
    .param p7, "taskbarViewController"    # Lcom/android/launcher3/taskbar/TaskbarViewController;
    .param p8, "taskbarScrimViewController"    # Lcom/android/launcher3/taskbar/TaskbarScrimViewController;
    .param p9, "taskbarUnfoldAnimationController"    # Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;
    .param p10, "taskbarKeyguardController"    # Lcom/android/launcher3/taskbar/TaskbarKeyguardController;
    .param p11, "stashedHandleViewController"    # Lcom/android/launcher3/taskbar/StashedHandleViewController;
    .param p12, "taskbarStashController"    # Lcom/android/launcher3/taskbar/TaskbarStashController;
    .param p13, "taskbarEduController"    # Lcom/android/launcher3/taskbar/TaskbarEduController;
    .param p14, "taskbarAutoHideSuspendController"    # Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;
    .param p15, "taskbarPopupController"    # Lcom/android/launcher3/taskbar/TaskbarPopupController;
    .param p16, "taskbarForceVisibleImmersiveController"    # Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;
    .param p17, "taskbarAllAppsController"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
    .param p18, "taskbarInsetsController"    # Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    .line 83
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    .line 59
    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    .line 64
    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    .line 84
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 85
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 86
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    .line 87
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 88
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 89
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    .line 90
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 91
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    .line 92
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    .line 93
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    .line 94
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    .line 95
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 96
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/TaskbarEduController;

    .line 97
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    .line 98
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    .line 99
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    .line 100
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    .line 101
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    .line 102
    return-void
.end method


# virtual methods
.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarControllers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 196
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string v1, "All taskbar controllers have already been destroyed."

    aput-object v1, v0, v2

    const-string v1, "%s\t%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    .line 202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    .line 201
    const-string v1, "%s\tmAreAllControllersInitialized=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    array-length v1, v0

    :goto_0
    const-string v2, "\t"

    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 204
    .local v4, "controller":Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, p2}, Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 203
    .end local v4    # "controller":Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 208
    return-void
.end method

.method public getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    return-object v0
.end method

.method getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .locals 4
    .param p1, "sharedState"    # Lcom/android/launcher3/taskbar/TaskbarSharedState;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    .line 111
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 115
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->init()V

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->init(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v2, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 124
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-boolean v2, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 130
    const/16 v1, 0xe

    new-array v1, v1, [Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    const/4 v3, 0x3

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    const/4 v3, 0x4

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    const/4 v3, 0x5

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    const/4 v3, 0x6

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    const/4 v3, 0x7

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    const/16 v3, 0x8

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v3, 0x9

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/TaskbarEduController;

    const/16 v3, 0xa

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v3, 0xb

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    const/16 v3, 0xc

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    const/16 v3, 0xd

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    .line 138
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 140
    .local v1, "postInitCallback":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 141
    .end local v1    # "postInitCallback":Ljava/lang/Runnable;
    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1
    .param p1, "configChanges"    # I

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onConfigurationChanged(I)V

    .line 153
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    .line 161
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onDestroy()V

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onDestroy()V

    .line 164
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->onDestroy()V

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->onDestroy()V

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->onDestroy()V

    .line 167
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->onDestroy()V

    .line 168
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->onDestroy()V

    .line 169
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->onDestroy()V

    .line 170
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->onDestroy()V

    .line 171
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->onDestroy()V

    .line 172
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->onDestroy()V

    .line 173
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onDestroy()V

    .line 174
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onDestroy()V

    .line 176
    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    .line 177
    return-void
.end method

.method public runAfterInit(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 185
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_0
    return-void
.end method
