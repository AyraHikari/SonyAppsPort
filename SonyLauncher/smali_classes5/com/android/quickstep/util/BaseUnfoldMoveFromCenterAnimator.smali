.class public abstract Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;
.super Ljava/lang/Object;
.source "BaseUnfoldMoveFromCenterAnimator.java"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field private mAnimationInProgress:Z

.field private final mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

.field private final mOriginalClipChildren:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalClipToPadding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 2
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    .line 42
    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    new-instance v1, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;

    invoke-direct {v1}, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;)V

    iput-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    .line 44
    return-void
.end method

.method private clearRegisteredViews()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->clearRegisteredViews()V

    .line 83
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    return-void
.end method


# virtual methods
.method protected disableClipping(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 96
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 100
    return-void
.end method

.method protected onPrepareViewsForAnimation()V
    .locals 0

    .line 89
    return-void
.end method

.method public onTransitionFinished()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    .line 65
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionFinished()V

    .line 66
    invoke-direct {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->clearRegisteredViews()V

    .line 67
    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 58
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    .line 59
    return-void
.end method

.method public onTransitionStarted()V
    .locals 1

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    .line 50
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->updateDisplayProperties()V

    .line 51
    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onPrepareViewsForAnimation()V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    .line 53
    return-void
.end method

.method protected registerViewForAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mMoveFromCenterAnimation:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->registerViewForAnimation(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method protected restoreClipping(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 103
    iget-object v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipToPadding:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 104
    .local v0, "originalClipToPadding":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mOriginalClipChildren:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 108
    .local v1, "originalClipChildren":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 111
    :cond_1
    return-void
.end method

.method public updateRegisteredViewsIfNeeded()V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->mAnimationInProgress:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->clearRegisteredViews()V

    .line 76
    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onPrepareViewsForAnimation()V

    .line 78
    :cond_0
    return-void
.end method
