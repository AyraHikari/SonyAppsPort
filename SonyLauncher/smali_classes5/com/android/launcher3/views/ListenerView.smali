.class public Lcom/android/launcher3/views/ListenerView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "ListenerView.java"


# instance fields
.field private mCloseListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ListenerView;->setVisibility(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 1

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method protected handleClose(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 56
    iget-boolean v0, p0, Lcom/android/launcher3/views/ListenerView;->mIsOpen:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/views/ListenerView;->mCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/ListenerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/views/ListenerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/ListenerView;->mIsOpen:Z

    .line 66
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 70
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/ListenerView;->mIsOpen:Z

    .line 46
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/ListenerView;->handleClose(Z)V

    .line 79
    :cond_0
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/ListenerView;->mIsOpen:Z

    .line 52
    return-void
.end method

.method public setListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/views/ListenerView;->mCloseListener:Ljava/lang/Runnable;

    .line 40
    return-void
.end method
