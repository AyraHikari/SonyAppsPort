.class public Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;
.super Landroid/view/View;
.source "WidgetsSpaceViewHolderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptySpaceView"
.end annotation


# instance fields
.field private mHeight:I

.field private mOnYChangeCallback:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->mHeight:I

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private notifyYChanged()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-launcher3-widget-picker-WidgetsSpaceViewHolderBinder$EmptySpaceView(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "v"    # Landroid/animation/ValueAnimator;

    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->notifyYChanged()V

    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 100
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->notifyYChanged()V

    .line 101
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 93
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 94
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->notifyYChanged()V

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 84
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->mHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 85
    return-void
.end method

.method public setFixedHeight(I)Z
    .locals 1
    .param p1, "height"    # I

    .line 74
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->mHeight:I

    if-eq v0, p1, :cond_0

    .line 75
    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->mHeight:I

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->requestLayout()V

    .line 77
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnYChangeCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 88
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->notifyYChanged()V

    .line 107
    return-void
.end method
