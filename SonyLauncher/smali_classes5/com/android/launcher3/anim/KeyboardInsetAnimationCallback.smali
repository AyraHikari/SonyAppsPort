.class public Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "KeyboardInsetAnimationCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;
    }
.end annotation


# instance fields
.field private mInitialTranslation:F

.field private mTerminalTranslation:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    .line 42
    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-interface {v0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onTranslationEnd()V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 80
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    .line 47
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 52
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    return-object p1

    .line 56
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    .line 58
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    iget v3, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mTerminalTranslation:F

    .line 59
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 61
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mTerminalTranslation:F

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-interface {v0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onTranslationStart()V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method
