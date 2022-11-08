.class public interface abstract Lcom/android/launcher3/views/BubbleTextHolder;
.super Ljava/lang/Object;
.source "BubbleTextHolder.java"

# interfaces
.implements Lcom/android/launcher3/views/IconLabelDotView;


# virtual methods
.method public abstract getBubbleText()Lcom/android/launcher3/BubbleTextView;
.end method

.method public setForceHideDot(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .line 33
    invoke-interface {p0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 34
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 28
    invoke-interface {p0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    .line 29
    return-void
.end method
