.class public Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "TaskShortcutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiWindowSystemShortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactory:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;

.field private mHandler:Landroid/os/Handler;

.field private final mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private final mTaskView:Lcom/android/quickstep/views/TaskView;

.field private final mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecentsView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/RecentsView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    return-object p0
.end method

.method public constructor <init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 6
    .param p1, "iconRes"    # I
    .param p2, "textRes"    # I
    .param p3, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p4, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .param p5, "factory"    # Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;
    .param p6, "launcherEvent"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 176
    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    .line 177
    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 176
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 178
    iput-object p6, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 181
    invoke-virtual {p3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 182
    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 183
    iput-object p5, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mFactory:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    .line 163
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTarget:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-android-quickstep-TaskShortcutFactory$MultiWindowSystemShortcut(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setIgnoreResetTask(I)V

    .line 242
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 243
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;

    .line 188
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v7, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 189
    .local v7, "taskKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    iget v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 191
    .local v8, "taskId":I
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;

    invoke-direct {v0, v6, v8}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$1;-><init>(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;I)V

    move-object v9, v0

    .line 204
    .local v9, "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;

    invoke-direct {v0, v6, v9}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;-><init>(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;Landroid/view/View$OnLayoutChangeListener;)V

    move-object v10, v0

    .line 218
    .local v10, "onDeviceProfileChangeListener":Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
    iget-object v0, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    .line 220
    iget-object v0, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mFactory:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;

    iget-object v1, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0, v1, v7}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->prepareToStartActivity(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    iget-object v0, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mFactory:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;

    iget-object v1, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;

    move-result-object v11

    .line 224
    .local v11, "options":Landroid/app/ActivityOptions;
    const/4 v0, 0x1

    if-eqz v11, :cond_1

    .line 225
    invoke-virtual {v11, v0}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 227
    :cond_1
    if-eqz v11, :cond_4

    .line 228
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v8, v11}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mFactory:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;

    iget-object v2, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->onActivityStarted(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    return-void

    .line 235
    :cond_2
    iget-object v1, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/BaseDraggingActivity;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 237
    new-instance v14, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$$ExternalSyntheticLambda0;

    invoke-direct {v14, v6, v8}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;I)V

    .line 245
    .local v14, "animStartedListener":Ljava/lang/Runnable;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 246
    .local v15, "position":[I
    iget-object v1, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v15}, Lcom/android/quickstep/views/TaskThumbnailView;->getLocationOnScreen([I)V

    .line 247
    iget-object v1, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 248
    .local v12, "width":I
    iget-object v1, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v13, v1

    .line 249
    .local v13, "height":I
    new-instance v5, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, v15, v1

    aget v3, v15, v0

    aget v1, v15, v1

    add-int/2addr v1, v12

    aget v0, v15, v0

    add-int/2addr v0, v13

    invoke-direct {v5, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    .local v5, "taskBounds":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getDimAlpha()F

    move-result v4

    .line 254
    .local v4, "alpha":F
    iget-object v0, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    .line 255
    nop

    .line 256
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v18, v9

    .end local v9    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    .local v18, "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    const/high16 v9, -0x1000000

    .line 255
    invoke-static {v0, v1, v2, v3, v9}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 258
    .local v9, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    .line 260
    new-instance v16, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$3;

    iget-object v2, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v8

    move/from16 v19, v4

    .end local v4    # "alpha":F
    .local v19, "alpha":F
    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$3;-><init>(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;Landroid/os/Handler;ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    move v0, v13

    .end local v13    # "height":I
    .local v0, "height":I
    move-object/from16 v13, v16

    .line 268
    .local v13, "future":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    iget-object v2, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    iget v3, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    move v4, v12

    .end local v12    # "width":I
    .local v4, "width":I
    move-object v12, v1

    move-object v1, v15

    .end local v15    # "position":[I
    .local v1, "position":[I
    move-object v15, v2

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;ZI)V

    .line 271
    iget-object v2, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseDraggingActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v3, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v3, v6, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 272
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    .line 228
    .end local v0    # "height":I
    .end local v1    # "position":[I
    .end local v4    # "width":I
    .end local v5    # "taskBounds":Landroid/graphics/Rect;
    .end local v13    # "future":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    .end local v14    # "animStartedListener":Ljava/lang/Runnable;
    .end local v18    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    .end local v19    # "alpha":F
    .local v9, "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    :cond_3
    move-object/from16 v18, v9

    .end local v9    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    .restart local v18    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    goto :goto_0

    .line 227
    .end local v18    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    .restart local v9    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    :cond_4
    move-object/from16 v18, v9

    .line 274
    .end local v9    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    .restart local v18    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    :goto_0
    return-void
.end method
