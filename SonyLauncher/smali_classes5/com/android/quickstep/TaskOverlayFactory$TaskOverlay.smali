.class public Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
.super Ljava/lang/Object;
.source "TaskOverlayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskOverlayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;,
        Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/quickstep/views/OverviewActionsView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mApplicationContext:Landroid/content/Context;

.field protected mImageApi:Lcom/android/quickstep/ImageActionsApi;

.field protected final mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method static bridge synthetic -$$Nest$menterSplitSelect(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->enterSplitSelect()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 3
    .param p1, "taskThumbnailView"    # Lcom/android/quickstep/views/TaskThumbnailView;

    .line 196
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    .line 198
    iput-object p1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 199
    new-instance v1, Lcom/android/quickstep/ImageActionsApi;

    .line 200
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-direct {v1, v0, v2}, Lcom/android/quickstep/ImageActionsApi;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;)V

    iput-object v1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mImageApi:Lcom/android/quickstep/ImageActionsApi;

    .line 201
    return-void
.end method

.method private enterSplitSelect()V
    .locals 2

    .line 255
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 256
    .local v0, "overviewPanel":Lcom/android/quickstep/views/RecentsView;
    iget-object v1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;)V

    .line 257
    return-void
.end method

.method static synthetic lambda$endLiveTileMode$0(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "recentsView"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 234
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public endLiveTileMode(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 231
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 233
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    new-instance v1, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    .line 236
    .end local v0    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    goto :goto_0

    .line 237
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 239
    :goto_0
    return-void
.end method

.method protected getActionsView()Lcom/android/quickstep/views/OverviewActionsView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$id;->overview_actions_view:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OverviewActionsView;

    iput-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object v0
.end method

.method public getModalStateSystemShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "original"    # Landroid/view/View;

    .line 296
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenshotShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "iteminfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;

    .line 310
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    new-instance v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$ScreenshotSystemShortcut;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method

.method public getTaskSnapshotBounds()Landroid/graphics/Rect;
    .locals 7

    .line 319
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 320
    .local v0, "location":[I
    iget-object v1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getLocationOnScreen([I)V

    .line 322
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskThumbnailView;->getWidth()I

    move-result v6

    aget v2, v0, v2

    add-int/2addr v6, v2

    iget-object v2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 323
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskThumbnailView;->getHeight()I

    move-result v2

    aget v4, v0, v4

    add-int/2addr v2, v4

    invoke-direct {v1, v3, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    return-object v1
.end method

.method public getTaskSnapshotInsets()Landroid/graphics/Insets;
    .locals 1

    .line 333
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getScaledInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public initOverlay(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "thumbnail"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .param p3, "matrix"    # Landroid/graphics/Matrix;
    .param p4, "rotated"    # Z

    .line 216
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    .line 218
    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    .line 220
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->isRealSnapshot()Z

    move-result v0

    .line 221
    .local v0, "isAllowedByPolicy":Z
    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;ZLcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OverviewActionsView;->setCallbacks(Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;)V

    .line 223
    .end local v0    # "isAllowedByPolicy":Z
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 0

    .line 283
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    return-void
.end method

.method public resetModalVisuals()V
    .locals 0

    .line 289
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    return-void
.end method

.method protected saveScreenshot(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 5
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 246
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->isRealSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mImageApi:Lcom/android/quickstep/ImageActionsApi;

    iget-object v1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getTaskSnapshotBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getTaskSnapshotInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 247
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/quickstep/ImageActionsApi;->saveScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->showBlockedByPolicyMessage()V

    .line 252
    :goto_0
    return-void
.end method

.method public setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V
    .locals 0
    .param p1, "fullscreenParams"    # Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 356
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 303
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    return-void
.end method

.method protected showBlockedByPolicyMessage()V
    .locals 4

    .line 343
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 344
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 345
    .local v0, "activityContext":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->blocked_by_policy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 348
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 349
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 348
    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 352
    return-void
.end method

.method protected startClearAll()V
    .locals 2

    .line 275
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 276
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->dismissAllTasks(Landroid/view/View;)V

    .line 277
    return-void
.end method

.method protected startSomcFreeForm(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 264
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 268
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/FreeFormUtil;->showInSomcFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 269
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->mApplicationContext:Landroid/content/Context;

    sget v1, Lcom/android/launcher3/R$string;->recents_guide_toast_tap_card_next_to_popup_window:I

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 271
    return-void

    .line 265
    :cond_1
    :goto_0
    return-void
.end method

.method public updateOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/quickstep/util/RecentsOrientedState;

    .line 340
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>;"
    return-void
.end method
