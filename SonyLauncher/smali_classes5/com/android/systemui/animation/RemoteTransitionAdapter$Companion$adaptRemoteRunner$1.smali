.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;
.super Landroid/window/IRemoteTransition$Stub;
.source "RemoteTransitionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1",
        "Landroid/window/IRemoteTransition$Stub;",
        "mergeAnimation",
        "",
        "token",
        "Landroid/os/IBinder;",
        "info",
        "Landroid/window/TransitionInfo;",
        "t",
        "Landroid/view/SurfaceControl$Transaction;",
        "mergeTarget",
        "finishCallback",
        "Landroid/window/IRemoteTransitionFinishedCallback;",
        "startAnimation",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method constructor <init>(Landroid/view/IRemoteAnimationRunner;)V
    .locals 0
    .param p1, "$runner"    # Landroid/view/IRemoteAnimationRunner;

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;->$runner:Landroid/view/IRemoteAnimationRunner;

    .line 198
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "mergeTarget"    # Landroid/os/IBinder;
    .param p5, "finishCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mergeTarget"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    const-string v0, "token"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishCallback"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v0

    .line 206
    .local v10, "leashMap":Landroid/util/ArrayMap;
    sget-object v0, Lcom/android/systemui/animation/RemoteTransitionAdapter;->Companion:Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v7, v10}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->wrapTargets(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v17

    .line 207
    .local v17, "appsCompat":[Landroid/view/RemoteAnimationTarget;
    sget-object v0, Lcom/android/systemui/animation/RemoteTransitionAdapter;->Companion:Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2, v7, v10}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->wrapTargets(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v15

    .line 209
    .local v15, "wallpapersCompat":[Landroid/view/RemoteAnimationTarget;
    new-array v14, v1, [Landroid/view/RemoteAnimationTarget;

    .line 212
    .local v14, "nonAppsCompat":[Landroid/view/RemoteAnimationTarget;
    const/4 v0, 0x0

    .line 213
    .local v0, "isReturnToHome":Z
    const/4 v3, 0x0

    .line 214
    .local v3, "launcherTask":Landroid/window/TransitionInfo$Change;
    const/4 v4, 0x0

    .line 215
    .local v4, "wallpaper":Landroid/window/TransitionInfo$Change;
    const/4 v5, 0x0

    .line 216
    .local v5, "launcherLayer":I
    const/4 v11, 0x0

    .line 217
    .local v11, "rotateDelta":I
    const/4 v12, 0x0

    .line 218
    .local v12, "displayW":F
    const/4 v13, 0x0

    .line 219
    .local v13, "displayH":F
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/4 v2, -0x1

    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_8

    :goto_0
    move/from16 v20, v16

    const/16 v19, -0x1

    .local v20, "i":I
    add-int/lit8 v16, v16, -0x1

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    move/from16 v2, v20

    .end local v20    # "i":I
    .local v2, "i":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 221
    .local v1, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v20

    move/from16 v23, v0

    .end local v0    # "isReturnToHome":Z
    .local v23, "isReturnToHome":Z
    const/4 v0, 0x2

    if-eqz v20, :cond_3

    .line 222
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v24, v3

    .end local v3    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .local v24, "launcherTask":Landroid/window/TransitionInfo$Change;
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    .line 223
    if-ne v3, v0, :cond_2

    .line 224
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 225
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 224
    :cond_1
    const/4 v3, 0x3

    .line 225
    :goto_1
    const/4 v0, 0x1

    .line 224
    :goto_2
    nop

    .line 226
    .end local v23    # "isReturnToHome":Z
    .restart local v0    # "isReturnToHome":Z
    move-object/from16 v20, v1

    .line 227
    .end local v24    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .local v20, "launcherTask":Landroid/window/TransitionInfo$Change;
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    sub-int v22, v22, v2

    move-object/from16 v24, v20

    move/from16 v5, v22

    .end local v5    # "launcherLayer":I
    .local v22, "launcherLayer":I
    goto :goto_4

    .line 223
    .end local v0    # "isReturnToHome":Z
    .end local v20    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .end local v22    # "launcherLayer":I
    .restart local v5    # "launcherLayer":I
    .restart local v23    # "isReturnToHome":Z
    .restart local v24    # "launcherTask":Landroid/window/TransitionInfo$Change;
    :cond_2
    const/4 v3, 0x3

    goto :goto_3

    .line 221
    .end local v24    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .restart local v3    # "launcherTask":Landroid/window/TransitionInfo$Change;
    :cond_3
    move-object/from16 v24, v3

    const/4 v3, 0x3

    .line 228
    .end local v3    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .restart local v24    # "launcherTask":Landroid/window/TransitionInfo$Change;
    :goto_3
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v20

    and-int/lit8 v0, v20, 0x2

    if-eqz v0, :cond_4

    .line 229
    move-object v0, v1

    move-object v4, v0

    move/from16 v0, v23

    .end local v4    # "wallpaper":Landroid/window/TransitionInfo$Change;
    .local v0, "wallpaper":Landroid/window/TransitionInfo$Change;
    goto :goto_4

    .line 228
    .end local v0    # "wallpaper":Landroid/window/TransitionInfo$Change;
    .restart local v4    # "wallpaper":Landroid/window/TransitionInfo$Change;
    :cond_4
    move/from16 v0, v23

    .line 231
    .end local v23    # "isReturnToHome":Z
    .local v0, "isReturnToHome":Z
    :goto_4
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v20

    if-nez v20, :cond_5

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v20

    if-ltz v20, :cond_5

    .line 232
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    move/from16 v20, v0

    .end local v0    # "isReturnToHome":Z
    .local v20, "isReturnToHome":Z
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v0

    if-eq v3, v0, :cond_6

    .line 233
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v0

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v3

    sub-int/2addr v0, v3

    .line 234
    .end local v11    # "rotateDelta":I
    .local v0, "rotateDelta":I
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 235
    .end local v12    # "displayW":F
    .local v3, "displayW":F
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    move v12, v3

    move v13, v11

    move v11, v0

    .end local v13    # "displayH":F
    .local v11, "displayH":F
    goto :goto_5

    .line 231
    .end local v3    # "displayW":F
    .end local v20    # "isReturnToHome":Z
    .local v0, "isReturnToHome":Z
    .local v11, "rotateDelta":I
    .restart local v12    # "displayW":F
    .restart local v13    # "displayH":F
    :cond_5
    move/from16 v20, v0

    .line 219
    .end local v0    # "isReturnToHome":Z
    .end local v1    # "change":Landroid/window/TransitionInfo$Change;
    .restart local v20    # "isReturnToHome":Z
    :cond_6
    :goto_5
    if-gez v16, :cond_7

    move-object/from16 v18, v4

    move/from16 v21, v11

    move/from16 v23, v12

    move/from16 v25, v13

    move v13, v5

    goto :goto_6

    :cond_7
    move/from16 v0, v20

    move-object/from16 v3, v24

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v2    # "i":I
    .end local v20    # "isReturnToHome":Z
    .end local v24    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .restart local v0    # "isReturnToHome":Z
    .local v3, "launcherTask":Landroid/window/TransitionInfo$Change;
    :cond_8
    move-object v1, v3

    const/16 v19, -0x1

    .end local v3    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .local v1, "launcherTask":Landroid/window/TransitionInfo$Change;
    move/from16 v20, v0

    move-object/from16 v24, v1

    move-object/from16 v18, v4

    move/from16 v21, v11

    move/from16 v23, v12

    move/from16 v25, v13

    move v13, v5

    .line 240
    .end local v0    # "isReturnToHome":Z
    .end local v1    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .end local v4    # "wallpaper":Landroid/window/TransitionInfo$Change;
    .end local v5    # "launcherLayer":I
    .end local v11    # "rotateDelta":I
    .end local v12    # "displayW":F
    .local v13, "launcherLayer":I
    .local v18, "wallpaper":Landroid/window/TransitionInfo$Change;
    .restart local v20    # "isReturnToHome":Z
    .local v21, "rotateDelta":I
    .local v23, "displayW":F
    .restart local v24    # "launcherTask":Landroid/window/TransitionInfo$Change;
    .local v25, "displayH":F
    :goto_6
    new-instance v0, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-direct {v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;-><init>()V

    move-object v12, v0

    .line 241
    .local v12, "counterLauncher":Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    new-instance v0, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-direct {v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;-><init>()V

    move-object v11, v0

    .line 242
    .local v11, "counterWallpaper":Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    if-eqz v24, :cond_9

    if-eqz v21, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 243
    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const-string v0, "info.getChange(launcherTask.parent!!)!!.leash"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    nop

    .line 243
    move-object v0, v12

    move-object/from16 v1, p3

    move/from16 v5, v19

    const/16 v16, 0x3

    move/from16 v3, v21

    move/from16 v4, v23

    move v8, v5

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    .line 245
    invoke-virtual {v12}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 246
    invoke-virtual {v12}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    .line 242
    :cond_9
    move/from16 v8, v19

    const/16 v16, 0x3

    .line 249
    :cond_a
    :goto_7
    if-eqz v20, :cond_10

    .line 250
    invoke-virtual {v12}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 251
    invoke-virtual {v12}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 254
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v8

    if-ltz v0, :cond_e

    :cond_c
    move v1, v0

    .local v1, "i":I
    add-int/2addr v0, v8

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 256
    .local v2, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 257
    .local v3, "leash":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    .line 259
    .local v4, "mode":I
    invoke-static {v2, v6}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_8

    .line 260
    :cond_d
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    .line 262
    :pswitch_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v1

    invoke-virtual {v7, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 263
    invoke-virtual {v12, v7, v3}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 254
    .end local v2    # "change":Landroid/window/TransitionInfo$Change;
    .end local v3    # "leash":Landroid/view/SurfaceControl;
    .end local v4    # "mode":I
    :goto_8
    if-gez v0, :cond_c

    .line 267
    .end local v1    # "i":I
    :cond_e
    array-length v0, v15

    add-int/2addr v0, v8

    if-ltz v0, :cond_12

    :cond_f
    move v1, v0

    .restart local v1    # "i":I
    add-int/2addr v0, v8

    .line 268
    aget-object v2, v15, v1

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 269
    aget-object v2, v15, v1

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 267
    if-gez v0, :cond_f

    .end local v1    # "i":I
    goto :goto_9

    .line 272
    :cond_10
    if-eqz v24, :cond_11

    .line 273
    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v12, v7, v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 275
    :cond_11
    if-eqz v18, :cond_12

    if-eqz v21, :cond_12

    invoke-virtual/range {v18 .. v18}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 276
    invoke-virtual/range {v18 .. v18}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const-string v0, "info.getChange(wallpaper.parent!!)!!.leash"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    nop

    .line 276
    move-object v0, v11

    move-object/from16 v1, p3

    move/from16 v3, v21

    move/from16 v4, v23

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    .line 278
    invoke-virtual {v11}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 279
    invoke-virtual {v11}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 280
    invoke-virtual/range {v18 .. v18}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v11, v7, v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 284
    :cond_12
    :goto_9
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 285
    new-instance v8, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;

    move-object v0, v8

    move-object v1, v12

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;-><init>(Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 312
    .local v0, "animationFinishedCallback":Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;->$runner:Landroid/view/IRemoteAnimationRunner;

    .line 313
    const/4 v3, 0x0

    .line 314
    nop

    .line 315
    move-object/from16 v16, v0

    check-cast v16, Landroid/view/IRemoteAnimationFinishedCallback;

    .line 312
    move-object v4, v11

    .end local v11    # "counterWallpaper":Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    .local v4, "counterWallpaper":Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    move-object v11, v2

    move-object v2, v12

    .end local v12    # "counterLauncher":Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    .local v2, "counterLauncher":Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    move v12, v3

    move v5, v13

    .end local v13    # "launcherLayer":I
    .restart local v5    # "launcherLayer":I
    move-object/from16 v13, v17

    move-object v3, v14

    .end local v14    # "nonAppsCompat":[Landroid/view/RemoteAnimationTarget;
    .local v3, "nonAppsCompat":[Landroid/view/RemoteAnimationTarget;
    move-object v14, v15

    move-object v8, v15

    .end local v15    # "wallpapersCompat":[Landroid/view/RemoteAnimationTarget;
    .local v8, "wallpapersCompat":[Landroid/view/RemoteAnimationTarget;
    move-object v15, v3

    invoke-interface/range {v11 .. v16}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 316
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
