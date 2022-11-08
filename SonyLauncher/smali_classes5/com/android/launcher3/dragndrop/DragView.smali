.class public abstract Lcom/android/launcher3/dragndrop/DragView;
.super Landroid/widget/FrameLayout;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# static fields
.field public static final VIEW_ZOOM_DURATION:I = 0x96


# instance fields
.field protected final mActivity:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final mAnim:Landroid/animation/ValueAnimator;

.field private mAnimStarted:Z

.field private mAnimatedShiftX:I

.field private mAnimatedShiftY:I

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBlurSizeOutline:I

.field private final mContent:Landroid/view/View;

.field private mContentViewInParentViewIndex:I

.field private mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mContentViewParent:Landroid/view/ViewGroup;

.field private final mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasDrawn:Z

.field private final mHeight:I

.field private final mInitialScale:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mOnAnimEndCallback:Ljava/lang/Runnable;

.field private final mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

.field protected final mRegistrationX:I

.field protected final mRegistrationY:I

.field protected final mScaleOnDrop:F

.field private mScaledMaskPath:Landroid/graphics/Path;

.field protected final mTempLoc:[I

.field private mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

.field private mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

.field private final mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnAnimEndCallback(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnAnimEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimStarted(Lcom/android/launcher3/dragndrop/DragView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedShiftX(Lcom/android/launcher3/dragndrop/DragView;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedShiftY(Lcom/android/launcher3/dragndrop/DragView;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyTranslation(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFFF)V
    .locals 10
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "initialScale"    # F
    .param p6, "scaleOnDrop"    # F
    .param p7, "finalScaleDps"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            "IIFFF)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    .local p1, "launcher":Landroid/content/Context;, "TT;"
    invoke-static {p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v2

    .line 118
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 117
    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V
    .locals 5
    .param p2, "content"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "registrationX"    # I
    .param p6, "registrationY"    # I
    .param p7, "initialScale"    # F
    .param p8, "scaleOnDrop"    # F
    .param p9, "finalScaleDps"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "IIIIFFF)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    .local p1, "activity":Landroid/content/Context;, "TT;"
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    .line 88
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    .line 90
    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 93
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 101
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnAnimEndCallback:Ljava/lang/Runnable;

    .line 141
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    .line 142
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    .line 144
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    .line 145
    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    .line 146
    iput p4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher3/dragndrop/DragView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setClipChildren(Z)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setClipToPadding(Z)V

    .line 162
    :cond_2
    int-to-float v1, p3

    add-float/2addr v1, p9

    int-to-float v3, p3

    div-float/2addr v1, v3

    .line 165
    .local v1, "scale":F
    invoke-virtual {p0, p7}, Lcom/android/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 166
    invoke-virtual {p0, p7}, Lcom/android/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 169
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 170
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    new-instance v3, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p7, v1}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/dragndrop/DragView;FF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 179
    new-instance v3, Lcom/android/launcher3/dragndrop/DragView$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/dragndrop/DragView$1;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 197
    iput p5, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    .line 198
    iput p6, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    .line 200
    iput p7, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    .line 201
    iput p8, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleOnDrop:F

    .line 204
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/dragndrop/DragView;->measure(II)V

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/launcher3/R$dimen;->drag_elevation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setElevation(F)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setWillNotDraw(Z)V

    .line 209
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyTranslation()V
    .locals 2

    .line 458
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 459
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 460
    return-void
.end method

.method private static getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 577
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 578
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 579
    return-object v0
.end method

.method public static removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 4
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;

    .line 586
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 589
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 590
    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 591
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v3, :cond_0

    .line 592
    invoke-virtual {v0, v2}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 589
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 595
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public animateShift(II)V
    .locals 2
    .param p1, "shiftX"    # I
    .param p2, "shiftY"    # I

    .line 440
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    .line 444
    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    .line 445
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 446
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$2;-><init>(Lcom/android/launcher3/dragndrop/DragView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    return-void
.end method

.method public abstract animateTo(IILjava/lang/Runnable;I)V
.end method

.method public cancelAnimation()V
    .locals 1

    .line 407
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 410
    :cond_0
    return-void
.end method

.method public crossFadeContent(Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .param p1, "crossFadeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I

    .line 362
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/dragndrop/DragView;->getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    .line 367
    .local v0, "newContent":Landroid/view/View;
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 368
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 369
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/launcher3/dragndrop/DragView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 371
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 372
    .local v1, "anim":Landroid/animation/AnimatorSet;
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 373
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 374
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 376
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public detachContentView(Z)V
    .locals 6
    .param p1, "reattachToPreviousParent"    # Z

    .line 469
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    if-ltz v0, :cond_1

    .line 470
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 471
    .local v0, "picture":Landroid/graphics/Picture;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 472
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 473
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 474
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 476
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    .line 477
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 476
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 478
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getClipToOutline()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setClipToOutline(Z)V

    .line 479
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 480
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/dragndrop/DragView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 482
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->removeViewInLayout(Landroid/view/View;)V

    .line 483
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    if-eqz p1, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 488
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    .line 489
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    .line 491
    .end local v0    # "picture":Landroid/graphics/Picture;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 346
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 352
    .local v0, "cnt":I
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 353
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->-$$Nest$fgetmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->-$$Nest$fgetmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    .end local v0    # "cnt":I
    :cond_0
    return-void
.end method

.method public getBlurSizeOutline()I
    .locals 1

    .line 508
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 522
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentViewParent()Landroid/view/ViewGroup;
    .locals 1

    .line 531
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .line 341
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    .line 325
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .line 321
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    .line 333
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getInitialScale()F
    .locals 1

    .line 512
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .line 379
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 517
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimationFinished()Z
    .locals 1

    .line 413
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-dragndrop-DragView(FFLandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "initialScale"    # F
    .param p2, "scale"    # F
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 172
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 173
    .local v0, "value":F
    sub-float v1, p2, p1

    mul-float/2addr v1, v0

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 174
    sub-float v1, p2, p1

    mul-float/2addr v1, v0

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 178
    :cond_0
    return-void
.end method

.method synthetic lambda$setItemInfo$1$com-android-launcher3-dragndrop-DragView(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "mask"    # Landroid/graphics/Path;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 292
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->removeAllViewsInLayout()V

    .line 296
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 298
    .local v0, "filter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 299
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 300
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 302
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    .line 303
    return-void
.end method

.method synthetic lambda$setItemInfo$2$com-android-launcher3-dragndrop-DragView(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "mask"    # Landroid/graphics/Path;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 289
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$setItemInfo$3$com-android-launcher3-dragndrop-DragView(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 229
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    .line 230
    .local v7, "outObj":[Ljava/lang/Object;
    iget v8, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    .line 231
    .local v8, "w":I
    iget v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    .line 232
    .local v9, "h":I
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v2, p1

    move v3, v8

    move v4, v9

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 235
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_5

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    .line 237
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 239
    .local v2, "blurMargin":I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 243
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    aget-object v6, v7, v4

    invoke-static {v5, p1, v6}, Lcom/android/launcher3/Utilities;->getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 244
    invoke-static {v5, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 247
    instance-of v5, v1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    xor-int/2addr v0, v5

    .line 249
    .local v0, "shouldDrawBackground":Z
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v5

    .line 251
    .local v5, "li":Lcom/android/launcher3/icons/LauncherIcons;
    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 252
    move-object v10, v1

    .local v10, "nDr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 255
    .end local v10    # "nDr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :try_start_0
    new-instance v10, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v12, -0x1000000

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v10, v11, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 257
    .restart local v10    # "nDr":Landroid/graphics/drawable/Drawable;
    :goto_0
    nop

    .line 258
    invoke-virtual {v5}, Lcom/android/launcher3/icons/LauncherIcons;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v11

    invoke-virtual {v11, v10, v6, v6, v6}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v6

    .line 257
    invoke-static {v3, v6}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v10    # "nDr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 260
    .end local v5    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_1
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 264
    .local v5, "adaptiveIcon":Landroid/graphics/drawable/AdaptiveIconDrawable;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 265
    .local v6, "shrunkBounds":Landroid/graphics/Rect;
    const v10, 0x3f7ae148    # 0.98f

    invoke-static {v6, v10}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 266
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 267
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v10

    .line 269
    .local v10, "mask":Landroid/graphics/Path;
    new-instance v11, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    int-to-float v12, v8

    .line 270
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-direct {v11, p0, v12}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    iput-object v11, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    .line 271
    new-instance v11, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    int-to-float v12, v9

    .line 272
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-direct {v11, p0, v12}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    iput-object v11, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    .line 274
    nop

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 276
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 274
    invoke-virtual {v3, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 278
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    if-nez v11, :cond_2

    .line 280
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v11, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 282
    :cond_2
    iget-object v11, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 283
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    if-nez v11, :cond_3

    .line 285
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v11, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    .line 287
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 289
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0, v10, p1}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v4, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 249
    .end local v6    # "shrunkBounds":Landroid/graphics/Rect;
    .end local v10    # "mask":Landroid/graphics/Path;
    .local v5, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v4

    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v5}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v4

    .line 305
    .end local v0    # "shouldDrawBackground":Z
    .end local v2    # "blurMargin":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_5
    :goto_2
    return-void
.end method

.method public move(II)V
    .locals 2
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .line 423
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    .line 428
    :cond_0
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    .line 429
    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    .line 430
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 431
    return-void
.end method

.method public onDragStart()V
    .locals 1

    .line 312
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 313
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 317
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 318
    return-void
.end method

.method public remove()V
    .locals 1

    .line 502
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 505
    :cond_0
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 337
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 338
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Point;

    .line 329
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 330
    return-void
.end method

.method public setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 221
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 225
    return-void

    .line 228
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method public setOnAnimationEndCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 212
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnAnimEndCallback:Ljava/lang/Runnable;

    .line 213
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .line 389
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView;, "Lcom/android/launcher3/dragndrop/DragView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 392
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    .line 393
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 394
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 398
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    .line 403
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->post(Ljava/lang/Runnable;)Z

    .line 404
    return-void
.end method
