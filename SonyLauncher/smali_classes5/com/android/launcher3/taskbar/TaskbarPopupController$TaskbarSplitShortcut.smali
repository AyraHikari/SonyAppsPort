.class Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "TaskbarPopupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarPopupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskbarSplitShortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 6
    .param p1, "context"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .param p4, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 260
    iget v1, p4, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->iconResId:I

    iget v2, p4, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->textResId:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 261
    iput-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mPosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 262
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 270
    .local v0, "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mTarget:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    .line 271
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mPosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget v5, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 270
    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/SystemUiProxy;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 276
    .end local v0    # "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_0

    .line 277
    :cond_0
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mTarget:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    const-class v2, Landroid/content/pm/LauncherApps;

    .line 278
    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 279
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 278
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;->mPosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget v3, v3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    .line 277
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/quickstep/SystemUiProxy;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 286
    :goto_0
    return-void
.end method
