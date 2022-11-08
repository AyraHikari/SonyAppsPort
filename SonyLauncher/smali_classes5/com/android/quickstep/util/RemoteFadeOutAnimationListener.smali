.class public Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;
.super Ljava/lang/Object;
.source "RemoteFadeOutAnimationListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mFirstFrame:Z

.field private final mTarget:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 3
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mFirstFrame:Z

    .line 37
    new-instance v1, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    iput-object v1, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mTarget:Lcom/android/quickstep/RemoteAnimationTargets;

    .line 39
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 43
    new-instance v0, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    .line 44
    .local v0, "t":Lcom/android/systemui/shared/system/TransactionCompat;
    iget-boolean v1, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mFirstFrame:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mTarget:Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 46
    .local v5, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v6}, Lcom/android/systemui/shared/system/TransactionCompat;->show(Landroid/view/SurfaceControl;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 45
    .end local v5    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iput-boolean v2, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mFirstFrame:Z

    .line 51
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    sub-float/2addr v1, v3

    .line 52
    .local v1, "alpha":F
    iget-object v3, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mTarget:Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object v3, v3, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 53
    .local v5, "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/shared/system/TransactionCompat;->setAlpha(Landroid/view/SurfaceControl;F)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 52
    .end local v5    # "app":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    .line 56
    return-void
.end method
