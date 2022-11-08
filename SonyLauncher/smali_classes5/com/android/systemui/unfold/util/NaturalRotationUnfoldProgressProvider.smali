.class public final Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;
.super Ljava/lang/Object;
.source "NaturalRotationUnfoldProgressProvider.kt"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0018B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\u0006\u0010\u0013\u001a\u00020\u000fJ\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00060\u000bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        "context",
        "Landroid/content/Context;",
        "windowManagerInterface",
        "Landroid/view/IWindowManager;",
        "unfoldTransitionProgressProvider",
        "(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V",
        "isNaturalRotation",
        "",
        "rotationWatcher",
        "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;",
        "scopedUnfoldTransitionProgressProvider",
        "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
        "addCallback",
        "",
        "listener",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;",
        "destroy",
        "init",
        "onRotationChanged",
        "rotation",
        "",
        "removeCallback",
        "RotationWatcher",
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
.field private final context:Landroid/content/Context;

.field private isNaturalRotation:Z

.field private final rotationWatcher:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;

.field private final scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field private final windowManagerInterface:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerInterface"    # Landroid/view/IWindowManager;
    .param p3, "unfoldTransitionProgressProvider"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowManagerInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfoldTransitionProgressProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->windowManagerInterface:Landroid/view/IWindowManager;

    .line 23
    new-instance v0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-direct {v0, p3}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 24
    new-instance v0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;-><init>(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->rotationWatcher:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;

    .line 16
    return-void
.end method

.method public static final synthetic access$onRotationChanged(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;I)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;
    .param p1, "rotation"    # I

    .line 16
    invoke-direct {p0, p1}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->onRotationChanged(I)V

    return-void
.end method

.method private final onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 40
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    :goto_1
    nop

    .line 42
    .local v0, "isNewRotationNatural":Z
    iget-boolean v1, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->isNaturalRotation:Z

    if-eq v1, v0, :cond_2

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->isNaturalRotation:Z

    .line 44
    iget-object v1, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 60
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 49
    nop

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->windowManagerInterface:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->rotationWatcher:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;

    check-cast v1, Landroid/view/IRotationWatcher;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 55
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->destroy()V

    .line 56
    return-void
.end method

.method public final init()V
    .locals 3

    .line 29
    nop

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->windowManagerInterface:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->rotationWatcher:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider$RotationWatcher;

    check-cast v1, Landroid/view/IRotationWatcher;

    iget-object v2, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    iget-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->onRotationChanged(I)V

    .line 36
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    const-string v2, "e.rethrowFromSystemServer()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 64
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    return-void
.end method
