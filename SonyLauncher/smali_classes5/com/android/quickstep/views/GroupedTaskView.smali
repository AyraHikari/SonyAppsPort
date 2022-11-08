.class public Lcom/android/quickstep/views/GroupedTaskView;
.super Lcom/android/quickstep/views/TaskView;
.source "GroupedTaskView.java"


# instance fields
.field private final mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

.field private final mIcon2CenterCoords:[F

.field private mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

.field private mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

.field private mIconView2:Lcom/android/quickstep/views/IconView;

.field private mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

.field private mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

.field private mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/util/CancellableTask<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2CenterCoords:[F

    .line 69
    new-instance v0, Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    .line 70
    return-void
.end method

.method private isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/PointF;

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 230
    .local v0, "localPos":[F
    invoke-static {p1, p0, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 231
    aget v1, v0, v2

    aget v2, v0, v3

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$launchTaskAnimated$2(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "endCallback"    # Lcom/android/launcher3/util/RunnableList;
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 185
    const/16 v0, 0x31

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 187
    return-void
.end method

.method private updateIconPlacement()V
    .locals 13

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 281
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget v12, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    .line 282
    .local v12, "taskIconHeight":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v9, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v9, v1

    .line 284
    .local v9, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 285
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v5

    iget-object v4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredHeight()I

    move-result v6

    .line 286
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getMeasuredWidth()I

    move-result v8

    iget-object v11, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 284
    move v4, v12

    move-object v10, v0

    invoke-interface/range {v1 .. v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 288
    return-void
.end method

.method private updateSecondaryDwbPlacement()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 295
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 9
    .param p1, "primary"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "secondary"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "orientedState"    # Lcom/android/quickstep/util/RecentsOrientedState;
    .param p4, "splitBoundsConfig"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 87
    invoke-super {p0, p1, p3}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 88
    iput-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 89
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mTaskIdContainer:[I

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-instance v1, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v6, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v7, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    const/4 v8, 0x1

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/IconView;I)V

    aput-object v1, v0, v2

    .line 92
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->setStagePosition(I)V

    .line 93
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 94
    iput-object p4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 95
    return-void
.end method

.method protected cancelPendingLoadTasks()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    .line 160
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    .line 162
    iput-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    .line 166
    iput-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    .line 168
    :cond_1
    return-void
.end method

.method protected getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I
    .locals 1
    .param p1, "position"    # Landroid/graphics/PointF;

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I

    move-result v0

    return v0

    .line 223
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getSplitRatio()F
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz v0, :cond_1

    .line 141
    iget-boolean v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    .line 141
    :goto_0
    return v0

    .line 144
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 3

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method synthetic lambda$onTaskListVisibilityChanged$0$com-android-quickstep-views-GroupedTaskView(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 107
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method synthetic lambda$onTaskListVisibilityChanged$1$com-android-quickstep-views-GroupedTaskView(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 115
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/GroupedTaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setSplitConfiguration(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setSplitConfiguration(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 119
    return-void
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .locals 8
    .param p2, "freezeTaskList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 197
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 198
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v7

    .line 197
    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(IIILjava/util/function/Consumer;ZF)V

    .line 199
    return-void
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 178
    .local v0, "endCallback":Lcom/android/launcher3/util/RunnableList;
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    .line 180
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const/16 v2, 0x31

    const-string v3, "Enter form GroupedTaskView"

    invoke-static {p0, v2, v3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/android/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V

    .line 191
    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    .line 192
    return-object v0

    .line 174
    .end local v0    # "endCallback":Lcom/android/launcher3/util/RunnableList;
    .end local v1    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 149
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2CenterCoords:[F

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/GroupedTaskView;->computeAndSetIconTouchDelegate(Lcom/android/quickstep/views/IconView;[FLcom/android/launcher3/util/TransformingTouchDelegate;)V

    .line 150
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/TransformingTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->onFinishInflate()V

    .line 80
    sget v0, Lcom/android/launcher3/R$id;->bottomright_snapshot:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/GroupedTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 81
    sget v0, Lcom/android/launcher3/R$id;->bottomRight_icon:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/GroupedTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/IconView;

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    .line 82
    new-instance v0, Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 83
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 243
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->onMeasure(II)V

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 245
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 246
    .local v9, "heightSize":I
    invoke-virtual {p0, v8, v9}, Lcom/android/quickstep/views/GroupedTaskView;->setMeasuredDimension(II)V

    .line 247
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v5, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 252
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v7, v3

    .line 250
    :goto_0
    move v3, v8

    move v4, v9

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V

    .line 253
    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateIconPlacement()V

    .line 254
    return-void

    .line 248
    :cond_2
    :goto_1
    return-void
.end method

.method public onRecycle()V
    .locals 3

    .line 236
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->onRecycle()V

    .line 237
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 238
    iput-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 239
    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "changes"    # I

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    .line 100
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    .line 101
    sget-object v2, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/RecentsModel;

    .line 102
    .local v2, "model":Lcom/android/quickstep/RecentsModel;
    invoke-virtual {v2}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v3

    .line 103
    .local v3, "thumbnailCache":Lcom/android/quickstep/TaskThumbnailCache;
    invoke-virtual {v2}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v4

    .line 105
    .local v4, "iconCache":Lcom/android/quickstep/TaskIconCache;
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/GroupedTaskView;->needsUpdate(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v5, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/GroupedTaskView;)V

    invoke-virtual {v3, v1, v5}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    .line 112
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/GroupedTaskView;->needsUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v1, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/GroupedTaskView;)V

    invoke-virtual {v4, v0, v1}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    .line 121
    .end local v2    # "model":Lcom/android/quickstep/RecentsModel;
    .end local v3    # "thumbnailCache":Lcom/android/quickstep/TaskThumbnailCache;
    .end local v4    # "iconCache":Lcom/android/quickstep/TaskIconCache;
    :cond_1
    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/GroupedTaskView;->needsUpdate(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v2, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 126
    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 128
    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/GroupedTaskView;->needsUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/views/GroupedTaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_4
    :goto_0
    return-void
.end method

.method refreshThumbnails(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->refreshThumbnails(Ljava/util/HashMap;)V

    .line 204
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 205
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 206
    .local v0, "thumbnailData":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 208
    return-void

    .line 212
    .end local v0    # "thumbnailData":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    .line 213
    return-void
.end method

.method public setColorTint(FI)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "tintColor"    # I

    .line 316
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    .line 317
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p2, p1}, Lcom/android/quickstep/views/IconView;->setIconColorTint(IF)V

    .line 318
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    .line 319
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v0, p2, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerColorTint(IF)V

    .line 320
    return-void
.end method

.method protected setIconAndDimTransitionProgress(FZ)V
    .locals 5
    .param p1, "progress"    # F
    .param p2, "invert"    # Z

    .line 305
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setIconAndDimTransitionProgress(FZ)V

    .line 307
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/IconView;->getAlpha()F

    move-result v0

    .line 308
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    .line 309
    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v3, v3, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v4, v4, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateBannerOffset(FF)V

    .line 312
    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 5
    .param p1, "orientationState"    # Lcom/android/quickstep/util/RecentsOrientedState;

    .line 264
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 265
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 266
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->isFocusedTask()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "isGridTask":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    goto :goto_1

    .line 268
    :cond_1
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    :goto_1
    nop

    .line 269
    .local v2, "iconDrawableSize":I
    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v3, v2, v2}, Lcom/android/quickstep/views/IconView;->setDrawableSize(II)V

    .line 270
    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/IconView;->setRotation(F)V

    .line 271
    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateIconPlacement()V

    .line 272
    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateSecondaryDwbPlacement()V

    .line 273
    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1
    .param p1, "overlayEnabled"    # Z

    .line 258
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setOverlayEnabled(Z)V

    .line 260
    return-void
.end method

.method protected updateSnapshotRadius()V
    .locals 2

    .line 299
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    .line 300
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    .line 301
    return-void
.end method

.method public updateSplitBoundsConfig(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 0
    .param p1, "stagedSplitBounds"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 135
    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 136
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->invalidate()V

    .line 137
    return-void
.end method
