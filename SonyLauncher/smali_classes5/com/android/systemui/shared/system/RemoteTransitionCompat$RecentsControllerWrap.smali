.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;
.super Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
.source "RemoteTransitionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecentsControllerWrap"
.end annotation


# instance fields
.field private mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

.field private mInfo:Landroid/window/TransitionInfo;

.field private mLeashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mOpeningLeashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mPausingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerToken;",
            ">;"
        }
    .end annotation
.end field

.field private mPipTask:Landroid/window/WindowContainerToken;

.field private mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field private mRecentsTask:Landroid/window/WindowContainerToken;

.field private mTransition:Landroid/os/IBinder;

.field private mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    .line 216
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 217
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    .line 218
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    .line 219
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 220
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    .line 221
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    .line 222
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    .line 223
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 224
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 464
    return-void
.end method

.method public cleanupScreenshot()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->cleanupScreenshot()V

    .line 436
    :cond_0
    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .locals 3
    .param p1, "moveHomeToTop"    # Z

    .line 454
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteTransitionCompat"

    const-string v2, "Failed to detach the navigation bar from app"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public finish(ZZ)V
    .locals 8
    .param p1, "toHome"    # Z
    .param p2, "sendUserLeaveHint"    # Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    const-string v1, "RemoteTransitionCompat"

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v2, "Duplicate call to finish"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    .line 374
    :cond_1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 375
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 377
    .local v2, "wct":Landroid/window/WindowContainerTransaction;
    const/4 v3, 0x0

    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 381
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 383
    iget-object v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v6, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 384
    iget-object v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iget-object v7, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v7}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 381
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 386
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v4, :cond_5

    .line 387
    invoke-virtual {v2, v4}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    goto :goto_2

    .line 390
    :cond_3
    if-nez p2, :cond_4

    .line 391
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 394
    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v5}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 397
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v5, :cond_5

    if-eqz p2, :cond_5

    .line 398
    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v5, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 399
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iget-object v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    .line 400
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 399
    invoke-static {v4, v5, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 401
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    .line 402
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 407
    :cond_5
    :goto_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 408
    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_6

    goto :goto_4

    .line 409
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 407
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 412
    .end local v4    # "i":I
    :cond_7
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v3

    goto :goto_5

    :cond_8
    move-object v5, v2

    :goto_5
    invoke-interface {v4, v5, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_6

    .line 413
    :catch_0
    move-exception v4

    .line 414
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to call animation finish callback"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 417
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 418
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 421
    .end local v1    # "i":I
    :cond_9
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    .line 422
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 423
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    .line 424
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    .line 425
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    .line 426
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    .line 427
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    .line 428
    return-void
.end method

.method public hideCurrentInputMethod()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    .line 356
    return-void
.end method

.method synthetic lambda$merge$0$com-android-systemui-shared-system-RemoteTransitionCompat$RecentsControllerWrap()V
    .locals 2

    .line 285
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    .line 286
    return-void
.end method

.method merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/RecentsAnimationListener;)Z
    .locals 17
    .param p1, "info"    # Landroid/window/TransitionInfo;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "recents"    # Lcom/android/systemui/shared/system/RecentsAnimationListener;

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 249
    .local v3, "openingTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/TransitionInfo$Change;>;"
    const/4 v4, 0x0

    .line 250
    .local v4, "cancelRecents":Z
    const/4 v5, 0x0

    .line 251
    .local v5, "homeGoingAway":Z
    const/4 v6, 0x0

    .line 252
    .local v6, "hasChangingApp":Z
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ltz v7, :cond_9

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 254
    .local v10, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v8, :cond_3

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-ne v11, v9, :cond_0

    goto :goto_2

    .line 271
    :cond_0
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    if-eq v9, v12, :cond_2

    .line 272
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    const/4 v11, 0x4

    if-ne v9, v11, :cond_1

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    const/4 v11, 0x6

    if-ne v9, v11, :cond_8

    .line 277
    const/4 v6, 0x1

    goto :goto_3

    .line 273
    :cond_2
    :goto_1
    iget-object v9, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 274
    const/4 v5, 0x1

    goto :goto_3

    .line 255
    :cond_3
    :goto_2
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    .line 256
    .local v9, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v9, :cond_7

    .line 257
    iget v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v11, v12, :cond_4

    .line 259
    const/4 v4, 0x1

    .line 261
    :cond_4
    if-nez v3, :cond_5

    .line 262
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v11

    .line 264
    :cond_5
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 267
    iget v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 269
    :cond_6
    iget v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    .end local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_7
    nop

    .line 252
    .end local v10    # "change":Landroid/window/TransitionInfo$Change;
    :cond_8
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 280
    .end local v7    # "i":I
    :cond_9
    const/4 v7, 0x0

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    .line 284
    new-instance v9, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    invoke-interface {v2, v9}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 287
    const-string v9, "RemoteTransitionCompat"

    const-string v10, "Recents callback doesn\'t support support switching to screenshot, there might be a flicker."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v0, v8, v7}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    .line 291
    :cond_a
    return v7

    .line 293
    :cond_b
    if-nez v3, :cond_c

    return v7

    .line 294
    :cond_c
    const/4 v7, 0x0

    .line 295
    .local v7, "pauseMatches":I
    if-nez v4, :cond_e

    .line 296
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 297
    iget-object v11, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 298
    add-int/lit8 v7, v7, 0x1

    .line 296
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 302
    .end local v10    # "i":I
    :cond_e
    if-lez v7, :cond_10

    .line 303
    iget-object v9, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v7, v9, :cond_f

    .line 311
    return v8

    .line 305
    :cond_f
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"Concelling\" a recents transitions by unpausing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " apps after pausing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " apps."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 313
    :cond_10
    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v10}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    mul-int/2addr v10, v9

    .line 314
    .local v10, "layer":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    .line 315
    nop

    .line 316
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 317
    .local v9, "targets":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_11

    .line 318
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 319
    .local v12, "change":Landroid/window/TransitionInfo$Change;
    iget-object v13, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v14, p1

    invoke-direct {v13, v12, v10, v14, v1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 323
    .local v13, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v15, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iget-object v8, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningLeashes:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl;

    move-object/from16 v16, v3

    .end local v3    # "openingTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/TransitionInfo$Change;>;"
    .local v16, "openingTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/TransitionInfo$Change;>;"
    iget-object v3, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v15, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v3, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget-object v8, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v8}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 325
    iget-object v3, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 326
    aput-object v13, v9, v11

    .line 317
    .end local v12    # "change":Landroid/window/TransitionInfo$Change;
    .end local v13    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    const/4 v8, 0x1

    goto :goto_5

    .end local v16    # "openingTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/TransitionInfo$Change;>;"
    .restart local v3    # "openingTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/TransitionInfo$Change;>;"
    :cond_11
    move-object/from16 v16, v3

    .line 328
    .end local v3    # "openingTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/TransitionInfo$Change;>;"
    .end local v11    # "i":I
    .restart local v16    # "openingTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/TransitionInfo$Change;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 329
    invoke-interface {v2, v9}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 330
    const/4 v3, 0x1

    return v3
.end method

.method public removeTask(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .line 446
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->removeTask(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 3
    .param p1, "taskId"    # I

    .line 336
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 337
    .local v0, "snapshot":Landroid/window/TaskSnapshot;
    if-eqz v0, :cond_0

    .line 338
    new-instance v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 342
    .end local v0    # "snapshot":Landroid/window/TaskSnapshot;
    :cond_0
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteTransitionCompat"

    const-string v2, "Failed to screenshot task"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 1
    .param p1, "behindSystemBars"    # Z

    .line 351
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    .line 352
    :cond_0
    return-void
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .locals 1
    .param p1, "defer"    # Z
    .param p2, "screenshot"    # Z

    .line 431
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setDeferCancelUntilNextTransition(ZZ)V

    .line 432
    :cond_0
    return-void
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "finishTransaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p3, "overlay"    # Landroid/view/SurfaceControl;

    .line 360
    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 361
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 364
    :cond_0
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 347
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 1
    .param p1, "willFinishToHome"    # Z

    .line 439
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setWillFinishToHome(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method setup(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;Ljava/util/ArrayList;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/util/ArrayMap;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "wrapped"    # Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "finishCB"    # Landroid/window/IRemoteTransitionFinishedCallback;
    .param p5, "pipTask"    # Landroid/window/WindowContainerToken;
    .param p6, "recentsTask"    # Landroid/window/WindowContainerToken;
    .param p8, "transition"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;",
            "Landroid/window/TransitionInfo;",
            "Landroid/window/IRemoteTransitionFinishedCallback;",
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerToken;",
            ">;",
            "Landroid/window/WindowContainerToken;",
            "Landroid/window/WindowContainerToken;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 231
    .local p4, "pausingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/WindowContainerToken;>;"
    .local p7, "leashMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;>;"
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    if-nez v0, :cond_0

    .line 235
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWrapped:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    .line 236
    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    .line 237
    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 238
    iput-object p4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    .line 239
    iput-object p5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    .line 240
    iput-object p6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 241
    iput-object p7, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    .line 242
    iput-object p8, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    .line 243
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to run a new recents animation while recents is already active."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
