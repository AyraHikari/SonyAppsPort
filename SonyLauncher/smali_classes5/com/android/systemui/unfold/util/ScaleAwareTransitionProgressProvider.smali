.class public final Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
.super Ljava/lang/Object;
.source "ScaleAwareTransitionProgressProvider.kt"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0007\u0018\u00002\u00020\u0001:\u0001\u0012B\u0019\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        "progressProviderToWrap",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Landroid/content/ContentResolver;)V",
        "animatorDurationScaleObserver",
        "com/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$animatorDurationScaleObserver$1",
        "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$animatorDurationScaleObserver$1;",
        "scopedUnfoldTransitionProgressProvider",
        "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
        "addCallback",
        "",
        "listener",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;",
        "destroy",
        "onAnimatorScaleChanged",
        "removeCallback",
        "Factory",
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
.field private final animatorDurationScaleObserver:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$animatorDurationScaleObserver$1;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "progressProviderToWrap"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation runtime Ldagger/assisted/AssistedInject;
    .end annotation

    const-string v0, "progressProviderToWrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 22
    new-instance v0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-direct {v0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 25
    new-instance v0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$animatorDurationScaleObserver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$animatorDurationScaleObserver$1;-><init>(Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;)V

    iput-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->animatorDurationScaleObserver:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$animatorDurationScaleObserver$1;

    .line 31
    nop

    .line 32
    nop

    .line 33
    const-string v1, "animator_duration_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 34
    nop

    .line 35
    check-cast v0, Landroid/database/ContentObserver;

    .line 32
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->onAnimatorScaleChanged()V

    .line 37
    nop

    .line 16
    return-void
.end method

.method public static final synthetic access$onAnimatorScaleChanged(Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;

    .line 14
    invoke-direct {p0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->onAnimatorScaleChanged()V

    return-void
.end method

.method private final onAnimatorScaleChanged()V
    .locals 2

    .line 40
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    .line 41
    .local v0, "animationsEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 46
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->animatorDurationScaleObserver:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$animatorDurationScaleObserver$1;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->destroy()V

    .line 55
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 50
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    return-void
.end method
