.class Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;
.super Ljava/lang/Object;
.source "RemoteAnimationAdapterCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2;

.field final synthetic val$counterLauncher:Lcom/android/wm/shell/util/CounterRotator;

.field final synthetic val$counterWallpaper:Lcom/android/wm/shell/util/CounterRotator;

.field final synthetic val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field final synthetic val$info:Landroid/window/TransitionInfo;

.field final synthetic val$leashMap:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2;Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2;

    .line 204
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$counterLauncher:Lcom/android/wm/shell/util/CounterRotator;

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$counterWallpaper:Lcom/android/wm/shell/util/CounterRotator;

    iput-object p4, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$info:Landroid/window/TransitionInfo;

    iput-object p5, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$leashMap:Landroid/util/ArrayMap;

    iput-object p6, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 210
    .local v0, "finishTransaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$counterLauncher:Lcom/android/wm/shell/util/CounterRotator;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$counterWallpaper:Lcom/android/wm/shell/util/CounterRotator;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 214
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$info:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$info:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 217
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 221
    .end local v1    # "i":I
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat$2$1;->val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_2

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityOptionsCompat"

    const-string v3, "Failed to call app controlled animation finished callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
