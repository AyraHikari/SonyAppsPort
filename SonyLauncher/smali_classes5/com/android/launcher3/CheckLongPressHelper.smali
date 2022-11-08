.class public Lcom/android/launcher3/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# static fields
.field public static final DEFAULT_LONG_PRESS_TIMEOUT_FACTOR:F = 0.75f


# instance fields
.field private mHasPerformedLongPress:Z

.field private final mListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressTimeoutFactor:F

.field private mPendingCheckForLongPress:Ljava/lang/Runnable;

.field private final mSlop:F

.field private final mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$WXH_Q7mG_GcP_BvvhOplFmna0F0(Lcom/android/launcher3/CheckLongPressHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 46
    iput-object p2, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mSlop:F

    .line 48
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    .line 139
    :cond_0
    return-void
.end method

.method private static isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 151
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 150
    :goto_0
    return v0
.end method

.method private postCheckForLongPress()V
    .locals 4

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    .line 97
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method private triggerLongPress()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 124
    .end local v0    # "handled":Z
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    .line 126
    .restart local v0    # "handled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->clearCallbacks()V

    .line 132
    .end local v0    # "handled":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 105
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->clearCallbacks()V

    .line 106
    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/CheckLongPressHelper;->mSlop:F

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/CheckLongPressHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 71
    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 62
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 63
    invoke-static {p1}, Lcom/android/launcher3/CheckLongPressHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/android/launcher3/CheckLongPressHelper;->triggerLongPress()V

    .line 81
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 0
    .param p1, "longPressTimeoutFactor"    # F

    .line 87
    iput p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeoutFactor:F

    .line 88
    return-void
.end method
