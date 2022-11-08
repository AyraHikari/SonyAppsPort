.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;
.super Landroid/window/IRemoteTransition$Stub;
.source "RemoteTransitionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationListener;Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Landroid/app/IApplicationThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

.field final synthetic val$controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field final synthetic val$recents:Lcom/android/systemui/shared/system/RecentsAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 119
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->this$0:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->val$controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->val$recents:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 120
    new-instance p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    invoke-direct {p2}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    .line 121
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 3
    .param p1, "transition"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "mergeTarget"    # Landroid/os/IBinder;
    .param p5, "finishedCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->val$recents:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/RecentsAnimationListener;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p5, v0, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteTransitionCompat"

    const-string v2, "Error merging transition."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 20
    .param p1, "transition"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishedCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v1

    .line 128
    .local v12, "leashMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;>;"
    nop

    .line 129
    const/4 v13, 0x0

    invoke-static {v10, v13, v11, v12}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v14

    .line 130
    .local v14, "apps":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    nop

    .line 131
    const/4 v1, 0x1

    invoke-static {v10, v1, v11, v12}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v15

    .line 133
    .local v15, "wallpapers":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    move-object/from16 v9, p1

    iput-object v9, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 137
    .local v8, "pausingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/WindowContainerToken;>;"
    const/4 v2, 0x0

    .line 138
    .local v2, "pipTask":Landroid/window/WindowContainerToken;
    const/4 v3, 0x0

    .line 139
    .local v3, "recentsTask":Landroid/window/WindowContainerToken;
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "pipTask":Landroid/window/WindowContainerToken;
    .end local v3    # "recentsTask":Landroid/window/WindowContainerToken;
    .local v4, "i":I
    .local v16, "pipTask":Landroid/window/WindowContainerToken;
    .local v17, "recentsTask":Landroid/window/WindowContainerToken;
    :goto_0
    if-ltz v4, :cond_5

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 141
    .local v2, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 142
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v1, 0x4

    if-ne v5, v1, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    if-eqz v3, :cond_1

    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v1, v7, :cond_1

    .line 157
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    sub-int/2addr v5, v4

    .line 157
    invoke-virtual {v11, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 159
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object/from16 v17, v1

    .end local v17    # "recentsTask":Landroid/window/WindowContainerToken;
    .local v1, "recentsTask":Landroid/window/WindowContainerToken;
    goto :goto_2

    .line 160
    .end local v1    # "recentsTask":Landroid/window/WindowContainerToken;
    .restart local v17    # "recentsTask":Landroid/window/WindowContainerToken;
    :cond_1
    if-eqz v3, :cond_4

    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v1, v6, :cond_4

    .line 161
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object/from16 v17, v1

    .end local v17    # "recentsTask":Landroid/window/WindowContainerToken;
    .restart local v1    # "recentsTask":Landroid/window/WindowContainerToken;
    goto :goto_2

    .line 143
    .end local v1    # "recentsTask":Landroid/window/WindowContainerToken;
    .restart local v17    # "recentsTask":Landroid/window/WindowContainerToken;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    sub-int/2addr v5, v4

    .line 143
    invoke-virtual {v11, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 145
    if-nez v3, :cond_3

    .line 146
    goto :goto_2

    .line 149
    :cond_3
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v8, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_4

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 151
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object/from16 v16, v1

    .line 139
    .end local v2    # "change":Landroid/window/TransitionInfo$Change;
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, -0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 165
    .end local v4    # "i":I
    :cond_5
    array-length v1, v15

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_6

    .line 166
    aget-object v2, v15, v1

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v11, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 165
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 168
    .end local v1    # "i":I
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 169
    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->val$controller:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget-object v7, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v5, v8

    move-object/from16 v6, v16

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    move-object/from16 v19, v8

    .end local v8    # "pausingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/WindowContainerToken;>;"
    .local v19, "pausingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/WindowContainerToken;>;"
    move-object v8, v12

    move-object/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->setup(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;Ljava/util/ArrayList;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/util/ArrayMap;Landroid/os/IBinder;)V

    .line 171
    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->val$recents:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v13, v13, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v14

    move-object v4, v15

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 173
    return-void
.end method
