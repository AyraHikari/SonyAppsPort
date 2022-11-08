.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;
.super Ljava/lang/Object;
.source "RemoteTransitionAdapter.kt"

# interfaces
.implements Landroid/view/IRemoteAnimationFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1",
        "Landroid/view/IRemoteAnimationFinishedCallback;",
        "asBinder",
        "Landroid/os/IBinder;",
        "onAnimationFinished",
        "",
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
.field final synthetic $counterLauncher:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

.field final synthetic $counterWallpaper:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

.field final synthetic $finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field final synthetic $info:Landroid/window/TransitionInfo;

.field final synthetic $leashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .param p1, "$counterLauncher"    # Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    .param p2, "$counterWallpaper"    # Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;
    .param p3, "$info"    # Landroid/window/TransitionInfo;
    .param p4, "$leashMap"    # Landroid/util/ArrayMap;
    .param p5, "$finishCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;",
            "Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;",
            "Landroid/window/TransitionInfo;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/window/IRemoteTransitionFinishedCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterLauncher:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    iput-object p2, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterWallpaper:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    iput-object p3, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$info:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$leashMap:Landroid/util/ArrayMap;

    iput-object p5, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAnimationFinished()V
    .locals 5

    .line 287
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 288
    .local v0, "finishTransaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterLauncher:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$counterWallpaper:Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$info:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    :cond_0
    move v2, v1

    .local v2, "i":I
    add-int/lit8 v1, v1, -0x1

    .line 293
    iget-object v3, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$info:Landroid/window/TransitionInfo;

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 292
    if-gez v1, :cond_0

    .line 295
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    :cond_2
    move v2, v1

    .restart local v2    # "i":I
    add-int/lit8 v1, v1, -0x1

    .line 296
    iget-object v3, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 295
    if-gez v1, :cond_2

    .line 298
    .end local v2    # "i":I
    :cond_3
    nop

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;->$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    const/4 v2, 0x0

    .line 300
    nop

    .line 299
    invoke-interface {v1, v2, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    nop

    .line 303
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    .line 302
    const-string v3, "ActivityOptionsCompat"

    const-string v4, "Failed to call app controlled animation finished callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
