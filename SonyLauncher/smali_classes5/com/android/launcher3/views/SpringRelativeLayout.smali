.class public Lcom/android/launcher3/views/SpringRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;,
        Lcom/android/launcher3/views/SpringRelativeLayout$ProxyEdgeEffectFactory;
    }
.end annotation


# instance fields
.field private final mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private final mEdgeGlowTop:Landroid/widget/EdgeEffect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEdgeGlowTop(Lcom/android/launcher3/views/SpringRelativeLayout;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 51
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/SpringRelativeLayout;->setWillNotDraw(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method protected absorbPullDeltaDistance(FF)V
    .locals 1
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->invalidate()V

    .line 94
    return-void
.end method

.method protected absorbSwipeUpVelocity(I)V
    .locals 1
    .param p1, "velocity"    # I

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->invalidate()V

    .line 89
    return-void
.end method

.method public createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 2

    .line 101
    new-instance v0, Lcom/android/launcher3/views/SpringRelativeLayout$ProxyEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/views/SpringRelativeLayout$ProxyEdgeEffectFactory;-><init>(Lcom/android/launcher3/views/SpringRelativeLayout;Lcom/android/launcher3/views/SpringRelativeLayout$ProxyEdgeEffectFactory-IA;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 58
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 61
    .local v0, "restoreCount":I
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    iget-object v2, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 63
    iget-object v2, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->postInvalidateOnAnimation()V

    .line 66
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 68
    .end local v0    # "restoreCount":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 70
    .restart local v0    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->getWidth()I

    move-result v2

    .line 71
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->getHeight()I

    move-result v3

    .line 72
    .local v3, "height":I
    neg-int v4, v2

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 73
    const/high16 v4, 0x43340000    # 180.0f

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 74
    iget-object v1, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->postInvalidateOnAnimation()V

    .line 78
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 80
    .end local v0    # "restoreCount":I
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_3
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 98
    return-void
.end method
