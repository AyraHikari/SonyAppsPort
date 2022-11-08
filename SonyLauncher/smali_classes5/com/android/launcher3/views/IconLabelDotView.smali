.class public interface abstract Lcom/android/launcher3/views/IconLabelDotView;
.super Ljava/lang/Object;
.source "IconLabelDotView.java"


# direct methods
.method public static setIconAndDotVisible(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .line 31
    instance-of v0, p0, Lcom/android/launcher3/views/IconLabelDotView;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/IconLabelDotView;

    invoke-interface {v0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconVisible(Z)V

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/IconLabelDotView;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/IconLabelDotView;->setForceHideDot(Z)V

    goto :goto_1

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract setForceHideDot(Z)V
.end method

.method public abstract setIconVisible(Z)V
.end method
