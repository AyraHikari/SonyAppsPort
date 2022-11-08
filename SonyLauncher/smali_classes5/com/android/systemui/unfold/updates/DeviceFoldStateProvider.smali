.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
.super Ljava/lang/Object;
.source "DeviceFoldStateProvider.kt"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;,
        Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;,
        Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;,
        Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceFoldStateProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceFoldStateProvider.kt\ncom/android/systemui/unfold/updates/DeviceFoldStateProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1849#2,2:242\n1849#2,2:244\n*S KotlinDebug\n*F\n+ 1 DeviceFoldStateProvider.kt\ncom/android/systemui/unfold/updates/DeviceFoldStateProvider\n*L\n129#1:242,2\n177#1:244,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001:\u000489:;BC\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020%H\u0016J\u0008\u0010-\u001a\u00020+H\u0002J\u000f\u0010.\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0002\u0010/J\u0010\u00100\u001a\u00020+2\u0006\u00101\u001a\u00020\u0014H\u0002J\u0010\u00102\u001a\u00020+2\u0006\u00103\u001a\u00020\"H\u0002J\u0010\u00104\u001a\u00020+2\u0006\u0010,\u001a\u00020%H\u0016J\u0008\u00105\u001a\u00020+H\u0002J\u0008\u00106\u001a\u00020+H\u0016J\u0008\u00107\u001a\u00020+H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00060\u0012R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00060\u0016R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0019R\u000e\u0010\u001c\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\n\n\u0002\u0010 \u0012\u0004\u0008\u001e\u0010\u001fR\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00060\'R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00060)R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;",
        "Lcom/android/systemui/unfold/updates/FoldStateProvider;",
        "context",
        "Landroid/content/Context;",
        "hingeAngleProvider",
        "Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;",
        "screenStatusProvider",
        "Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;",
        "deviceStateManager",
        "Landroid/hardware/devicestate/DeviceStateManager;",
        "activityManager",
        "Landroid/app/ActivityManager;",
        "mainExecutor",
        "Ljava/util/concurrent/Executor;",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V",
        "foldStateListener",
        "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;",
        "halfOpenedTimeoutMillis",
        "",
        "hingeAngleListener",
        "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;",
        "isFinishedOpening",
        "",
        "()Z",
        "isFolded",
        "isTransitionInProgress",
        "isUnfoldHandled",
        "lastFoldUpdate",
        "getLastFoldUpdate$annotations",
        "()V",
        "Ljava/lang/Integer;",
        "lastHingeAngle",
        "",
        "outputListeners",
        "",
        "Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;",
        "screenListener",
        "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;",
        "timeoutRunnable",
        "Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;",
        "addCallback",
        "",
        "listener",
        "cancelTimeout",
        "getClosingThreshold",
        "()Ljava/lang/Integer;",
        "notifyFoldUpdate",
        "update",
        "onHingeAngle",
        "angle",
        "removeCallback",
        "rescheduleAbortAnimationTimeout",
        "start",
        "stop",
        "FoldStateListener",
        "HingeAngleListener",
        "ScreenStatusListener",
        "TimeoutRunnable",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
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
.field private final activityManager:Landroid/app/ActivityManager;

.field private final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field private final foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

.field private final halfOpenedTimeoutMillis:I

.field private final handler:Landroid/os/Handler;

.field private final hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

.field private final hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

.field private isFolded:Z

.field private isUnfoldHandled:Z

.field private lastFoldUpdate:Ljava/lang/Integer;

.field private lastHingeAngle:F

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private final outputListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;",
            ">;"
        }
    .end annotation
.end field

.field private final screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

.field private final screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

.field private final timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hingeAngleProvider"    # Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;
    .param p3, "screenStatusProvider"    # Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .param p4, "deviceStateManager"    # Landroid/hardware/devicestate/DeviceStateManager;
    .param p5, "activityManager"    # Landroid/app/ActivityManager;
    .param p6, "mainExecutor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Lcom/android/systemui/dagger/qualifiers/Main;
        .end annotation
    .end param
    .param p7, "handler"    # Landroid/os/Handler;
        .annotation runtime Lcom/android/systemui/dagger/qualifiers/Main;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hingeAngleProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenStatusProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceStateManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    .line 43
    iput-object p4, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 44
    iput-object p5, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityManager:Landroid/app/ActivityManager;

    .line 45
    iput-object p6, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->handler:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    .line 56
    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 57
    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    .line 58
    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    nop

    .line 66
    const v1, 0x10e00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->halfOpenedTimeoutMillis:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    .line 39
    return-void
.end method

.method public static final synthetic access$cancelTimeout(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->cancelTimeout()V

    return-void
.end method

.method public static final synthetic access$getHingeAngleProvider$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    return-object v0
.end method

.method public static final synthetic access$getOutputListeners$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$isFolded$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Z
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    return v0
.end method

.method public static final synthetic access$isUnfoldHandled$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)Z
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    return v0
.end method

.method public static final synthetic access$notifyFoldUpdate(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;I)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .param p1, "update"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(I)V

    return-void
.end method

.method public static final synthetic access$onHingeAngle(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;F)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .param p1, "angle"    # F

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->onHingeAngle(F)V

    return-void
.end method

.method public static final synthetic access$rescheduleAbortAnimationTimeout(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rescheduleAbortAnimationTimeout()V

    return-void
.end method

.method public static final synthetic access$setFolded$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .param p1, "<set-?>"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    return-void
.end method

.method public static final synthetic access$setLastHingeAngle$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;F)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .param p1, "<set-?>"    # F

    .line 37
    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    return-void
.end method

.method public static final synthetic access$setUnfoldHandled$p(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .param p1, "<set-?>"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    return-void
.end method

.method private final cancelTimeout()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method private final getClosingThreshold()Ljava/lang/Integer;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    .line 141
    return-object v1

    .line 140
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    nop

    .line 143
    .local v0, "activityType":I
    nop

    .line 147
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 148
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    goto :goto_2

    .line 150
    :cond_3
    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 147
    :goto_2
    return-object v1
.end method

.method private static synthetic getLastFoldUpdate$annotations()V
    .locals 0

    return-void
.end method

.method private final isTransitionInProgress()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    return v1
.end method

.method private final notifyFoldUpdate(I)V
    .locals 6
    .param p1, "update"    # I

    .line 174
    nop

    .line 177
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 244
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    .local v4, "it":Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;
    const/4 v5, 0x0

    .line 177
    .local v5, "$i$a$-forEach-DeviceFoldStateProvider$notifyFoldUpdate$1":I
    invoke-interface {v4, p1}, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;->onFoldUpdate(I)V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;
    .end local v5    # "$i$a$-forEach-DeviceFoldStateProvider$notifyFoldUpdate$1":I
    goto :goto_0

    .line 245
    :cond_0
    nop

    .line 178
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 179
    return-void
.end method

.method private final onHingeAngle(F)V
    .locals 11
    .param p1, "angle"    # F

    .line 104
    nop

    .line 108
    iget v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 109
    .local v0, "isClosing":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->getClosingThreshold()Ljava/lang/Integer;

    move-result-object v3

    .line 110
    .local v3, "closingThreshold":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    .line 111
    .local v4, "closingThresholdMet":Z
    :goto_2
    const/high16 v5, 0x43340000    # 180.0f

    sub-float/2addr v5, p1

    const/high16 v6, 0x41700000    # 15.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    .line 112
    .local v5, "isFullyOpened":Z
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_5

    move v1, v2

    .line 114
    .local v1, "closingEventDispatched":Z
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    if-nez v5, :cond_6

    .line 115
    invoke-direct {p0, v2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(I)V

    .line 118
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 119
    if-eqz v5, :cond_7

    .line 120
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(I)V

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->cancelTimeout()V

    goto :goto_5

    .line 124
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rescheduleAbortAnimationTimeout()V

    .line 128
    :cond_8
    :goto_5
    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    .line 129
    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 242
    .local v6, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    .local v9, "it":Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;
    const/4 v10, 0x0

    .line 129
    .local v10, "$i$a$-forEach-DeviceFoldStateProvider$onHingeAngle$1":I
    invoke-interface {v9, p1}, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;->onHingeAngleUpdate(F)V

    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v9    # "it":Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;
    .end local v10    # "$i$a$-forEach-DeviceFoldStateProvider$onHingeAngle$1":I
    goto :goto_6

    .line 243
    :cond_9
    nop

    .line 130
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    return-void
.end method

.method private final rescheduleAbortAnimationTimeout()V
    .locals 4

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->cancelTimeout()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$TimeoutRunnable;

    check-cast v1, Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->halfOpenedTimeoutMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->addCallback(Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;)V

    return-void
.end method

.method public isFinishedOpening()Z
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    if-nez v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public removeCallback(Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->removeCallback(Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    check-cast v2, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;->addCallback(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->addCallback(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public stop()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;->removeCallback(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->removeCallback(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    invoke-interface {v0}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->stop()V

    .line 83
    return-void
.end method
