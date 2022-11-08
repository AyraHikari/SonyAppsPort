.class Lcom/android/launcher3/graphics/IconShape$PathShape$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/IconShape$PathShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

.field final synthetic this$0:Lcom/android/launcher3/graphics/IconShape$PathShape;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/IconShape$PathShape;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/IconShape$PathShape;

    .line 132
    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->this$0:Lcom/android/launcher3/graphics/IconShape$PathShape;

    iput-object p2, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->val$target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->val$target:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/views/ClipPathView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ClipPathView;->setClipPath(Landroid/graphics/Path;)V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->val$target:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->val$target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 140
    return-void
.end method
