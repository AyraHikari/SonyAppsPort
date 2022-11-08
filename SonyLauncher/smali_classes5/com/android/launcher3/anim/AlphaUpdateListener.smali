.class public Lcom/android/launcher3/anim/AlphaUpdateListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlphaUpdateListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final ALPHA_CUTOFF_THRESHOLD:F = 0.01f


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 35
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    .line 37
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 57
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    .line 63
    .local v2, "oldFocusability":I
    const/high16 v3, 0x60000

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 65
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 66
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "oldFocusability":I
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 42
    return-void
.end method
