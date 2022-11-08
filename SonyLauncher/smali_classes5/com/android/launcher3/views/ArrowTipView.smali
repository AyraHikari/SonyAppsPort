.class public Lcom/android/launcher3/views/ArrowTipView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "ArrowTipView.java"


# static fields
.field private static final AUTO_CLOSE_TIMEOUT_MILLIS:J = 0x2710L

.field private static final HIDE_DURATION_MS:J = 0x64L

.field private static final SHOW_DELAY_MS:J = 0xc8L

.field private static final SHOW_DURATION_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private final mArrowMinOffset:I

.field private mArrowView:Landroid/view/View;

.field private final mArrowWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsPointingUp:Z

.field private mOnClosed:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/launcher3/views/ArrowTipView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/ArrowTipView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPointingUp"    # Z

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    .line 71
    invoke-static {p1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 72
    iput-boolean p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->arrow_toast_arrow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowWidth:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->dynamic_grid_cell_border_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    .line 76
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/ArrowTipView;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    sget v0, Lcom/android/launcher3/R$layout;->arrow_toast:I

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/views/ArrowTipView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->setOrientation(I)V

    .line 119
    sget v0, Lcom/android/launcher3/R$id;->arrow:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    .line 120
    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->updateArrowTipInView()V

    .line 121
    return-void
.end method

.method private showAtLocation(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "arrowXCoord"    # I
    .param p3, "yCoordDownPointingTip"    # I
    .param p4, "yCoordUpPointingTip"    # I
    .param p5, "shouldAutoClose"    # Z

    .line 275
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v9

    .line 276
    .local v9, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    .line 277
    .local v10, "parentViewWidth":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    .line 278
    .local v11, "parentViewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ArrowTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_picker_education_tip_max_width:I

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 280
    .local v12, "maxTextViewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ArrowTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_picker_education_tip_min_margin:I

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 282
    .local v13, "minViewMargin":I
    mul-int/lit8 v0, v13, 0x2

    add-int/2addr v0, v12

    if-ge v10, v0, :cond_0

    .line 283
    sget-object v0, Lcom/android/launcher3/views/ArrowTipView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display tip on a small screen of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_0
    sget v0, Lcom/android/launcher3/R$id;->text:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/views/ArrowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 288
    .local v14, "textView":Landroid/widget/TextView;
    move-object/from16 v15, p1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 290
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ArrowTipView;->requestLayout()V

    .line 293
    new-instance v7, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v13

    move v4, v10

    move/from16 v5, p4

    move v6, v11

    move-object/from16 v16, v9

    move-object v9, v7

    .end local v9    # "parent":Landroid/view/ViewGroup;
    .local v16, "parent":Landroid/view/ViewGroup;
    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/views/ArrowTipView;IIIIII)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/views/ArrowTipView;->post(Ljava/lang/Runnable;)Z

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/launcher3/views/ArrowTipView;->mIsOpen:Z

    .line 332
    if-eqz p5, :cond_1

    .line 333
    iget-object v0, v8, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v8}, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/views/ArrowTipView;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/views/ArrowTipView;->setAlpha(F)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ArrowTipView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    return-object v8
.end method

.method private updateArrowTipInView()V
    .locals 7

    .line 347
    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 348
    .local v0, "arrowLp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 350
    .local v1, "arrowDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 351
    .local v2, "arrowPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->arrow_toast_corner_radius:I

    .line 352
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 353
    .local v3, "arrowTipRadius":I
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$color;->arrow_tip_view_bg:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    new-instance v4, Landroid/graphics/CornerPathEffect;

    int-to-float v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 355
    iget-object v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/views/ArrowTipView;->removeView(Landroid/view/View;)V

    .line 358
    iget-boolean v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/views/ArrowTipView;->addView(Landroid/view/View;I)V

    .line 360
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v5, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/android/launcher3/views/ArrowTipView;->addView(Landroid/view/View;I)V

    .line 363
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v6, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 365
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 92
    iget-boolean v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsOpen:Z

    if-eqz v0, :cond_2

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/ArrowTipView;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mOnClosed:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsOpen:Z

    .line 108
    :cond_2
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 112
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$handleClose$0$com-android-launcher3-views-ArrowTipView()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$show$1$com-android-launcher3-views-ArrowTipView(I)V
    .locals 1
    .param p1, "top"    # I

    .line 181
    iget-boolean v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->getHeight()I

    move-result v0

    :goto_0
    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->setY(F)V

    return-void
.end method

.method synthetic lambda$show$2$com-android-launcher3-views-ArrowTipView()V
    .locals 1

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->handleClose(Z)V

    return-void
.end method

.method synthetic lambda$showAtLocation$3$com-android-launcher3-views-ArrowTipView(IIIIII)V
    .locals 7
    .param p1, "arrowXCoord"    # I
    .param p2, "minViewMargin"    # I
    .param p3, "parentViewWidth"    # I
    .param p4, "yCoordUpPointingTip"    # I
    .param p5, "parentViewHeight"    # I
    .param p6, "yCoordDownPointingTip"    # I

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 297
    .local v0, "halfWidth":F
    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float v3, p2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 300
    int-to-float v2, p2

    .local v2, "xCoord":F
    goto :goto_0

    .line 301
    .end local v2    # "xCoord":F
    :cond_0
    int-to-float v2, p1

    add-float/2addr v2, v0

    sub-int v3, p3, p2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 304
    sub-int v2, p3, p2

    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .restart local v2    # "xCoord":F
    goto :goto_0

    .line 307
    .end local v2    # "xCoord":F
    :cond_1
    int-to-float v2, p1

    sub-float/2addr v2, v0

    .line 309
    .restart local v2    # "xCoord":F
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/ArrowTipView;->setX(F)V

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->getHeight()I

    move-result v3

    .line 313
    .local v3, "viewHeight":I
    iget-boolean v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz v4, :cond_2

    add-int v5, p4, v3

    if-le v5, p5, :cond_3

    goto :goto_1

    :cond_2
    sub-int v5, p6, v3

    if-gez v5, :cond_3

    .line 317
    :goto_1
    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    .line 318
    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->updateArrowTipInView()V

    .line 323
    :cond_3
    iget-boolean v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz v4, :cond_4

    int-to-float v4, p4

    goto :goto_2

    :cond_4
    sub-int v4, p6, v3

    int-to-float v4, v4

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/launcher3/views/ArrowTipView;->setY(F)V

    .line 327
    iget-object v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    int-to-float v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 328
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->requestLayout()V

    .line 329
    return-void
.end method

.method synthetic lambda$showAtLocation$4$com-android-launcher3-views-ArrowTipView()V
    .locals 1

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->handleClose(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 377
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->close(Z)V

    .line 379
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->close(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClosedCallback(Ljava/lang/Runnable;)Lcom/android/launcher3/views/ArrowTipView;
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 371
    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mOnClosed:Ljava/lang/Runnable;

    .line 372
    return-object p0
.end method

.method public show(Ljava/lang/String;I)Lcom/android/launcher3/views/ArrowTipView;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "top"    # I

    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/views/ArrowTipView;->show(Ljava/lang/String;III)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    return-object v0
.end method

.method public show(Ljava/lang/String;III)Lcom/android/launcher3/views/ArrowTipView;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .param p3, "arrowMarginStart"    # I
    .param p4, "top"    # I

    .line 140
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/views/ArrowTipView;->show(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    return-object v0
.end method

.method public show(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .param p3, "arrowMarginStart"    # I
    .param p4, "top"    # I
    .param p5, "shouldAutoClose"    # Z

    .line 155
    sget v0, Lcom/android/launcher3/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 157
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 161
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 162
    .local v2, "params":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iput p2, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    .line 163
    iget v3, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->leftMargin:I

    .line 164
    iget v3, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->rightMargin:I

    .line 165
    iget-object v3, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 169
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    sub-int p3, v4, p3

    .line 172
    :cond_0
    const v4, 0x800005

    if-ne p2, v4, :cond_1

    .line 173
    iget v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v7, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, p3

    iget v7, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 173
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 176
    :cond_1
    const v4, 0x800003

    if-ne p2, v4, :cond_2

    .line 177
    iget v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    iget v6, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->leftMargin:I

    sub-int v6, p3, v6

    iget v7, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 180
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->requestLayout()V

    .line 181
    new-instance v4, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p4}, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/views/ArrowTipView;I)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/views/ArrowTipView;->post(Ljava/lang/Runnable;)Z

    .line 183
    iput-boolean v5, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsOpen:Z

    .line 184
    if-eqz p5, :cond_3

    .line 185
    iget-object v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/views/ArrowTipView;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/views/ArrowTipView;->setAlpha(F)V

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher3/views/ArrowTipView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 189
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    .line 191
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    .line 192
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 193
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 195
    return-object p0
.end method

.method public showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/android/launcher3/views/ArrowTipView;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "arrowXCoord"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "margin"    # I

    .line 251
    iget v0, p3, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, p4

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, p4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    return-object v0
.end method

.method public showAtLocation(Ljava/lang/String;II)Lcom/android/launcher3/views/ArrowTipView;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "arrowXCoord"    # I
    .param p3, "yCoord"    # I

    .line 209
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    return-object v0
.end method

.method public showAtLocation(Ljava/lang/String;IIZ)Lcom/android/launcher3/views/ArrowTipView;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "arrowXCoord"    # I
    .param p3, "yCoord"    # I
    .param p4, "shouldAutoClose"    # Z

    .line 230
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    return-object v0
.end method
