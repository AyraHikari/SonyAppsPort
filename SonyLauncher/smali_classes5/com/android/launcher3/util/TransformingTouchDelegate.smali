.class public Lcom/android/launcher3/util/TransformingTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "TransformingTouchDelegate.java"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mBounds:Landroid/graphics/RectF;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private final mTouchCheckBounds:Landroid/graphics/RectF;

.field private mTouchExtension:F

.field private mWasTouchOutsideBounds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/TransformingTouchDelegate;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "delegateView"    # Landroid/view/View;

    .line 44
    sget-object v0, Lcom/android/launcher3/util/TransformingTouchDelegate;->sTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    .line 49
    return-void
.end method

.method private updateTouchBounds()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchExtension:F

    neg-float v2, v1

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 64
    return-void
.end method


# virtual methods
.method public extendTouchBounds(F)V
    .locals 0
    .param p1, "extension"    # F

    .line 57
    iput p1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchExtension:F

    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/util/TransformingTouchDelegate;->updateTouchBounds()V

    .line 59
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "sendToDelegate":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    .line 89
    goto :goto_0

    .line 92
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    .line 82
    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mWasTouchOutsideBounds:Z

    .line 84
    const/4 v0, 0x1

    .line 96
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 97
    .local v1, "handled":Z
    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 99
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 100
    .local v3, "y":F
    iget-boolean v4, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mWasTouchOutsideBounds:Z

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 103
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 105
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 106
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 108
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    invoke-direct {p0}, Lcom/android/launcher3/util/TransformingTouchDelegate;->updateTouchBounds()V

    .line 54
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 67
    iput-object p1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 68
    return-void
.end method
