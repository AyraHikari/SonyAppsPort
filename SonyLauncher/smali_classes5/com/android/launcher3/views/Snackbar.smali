.class public Lcom/android/launcher3/views/Snackbar;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "Snackbar.java"


# static fields
.field private static final HIDE_DURATION_MS:J = 0xb4L

.field private static final SHOW_DURATION_MS:J = 0xb4L

.field private static final TIMEOUT_DURATION_MS:I = 0xfa0


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mOnDismissed:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$y-A6iT_blRsfZR42eZC7OdlkvkE(Lcom/android/launcher3/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 58
    sget v0, Lcom/android/launcher3/R$layout;->snackbar:I

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/views/Snackbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    return-void
.end method

.method static synthetic lambda$show$0(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V
    .locals 1
    .param p0, "onActionClicked"    # Ljava/lang/Runnable;
    .param p1, "snackbar"    # Lcom/android/launcher3/views/Snackbar;
    .param p2, "v"    # Landroid/view/View;

    .line 114
    if-eqz p0, :cond_0

    .line 115
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/Snackbar;->close(Z)V

    .line 119
    return-void
.end method

.method static synthetic lambda$show$1(Lcom/android/launcher3/views/Snackbar;)V
    .locals 1
    .param p0, "snackbar"    # Lcom/android/launcher3/views/Snackbar;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/Snackbar;->close(Z)V

    return-void
.end method

.method private onClosed()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 188
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 22
    .param p1, "labelStringResId"    # I
    .param p2, "actionStringResId"    # I
    .param p3, "onDismissed"    # Ljava/lang/Runnable;
    .param p4, "onActionClicked"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;II",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 70
    .local p0, "activity":Landroid/content/Context;, "TT;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    const/4 v3, 0x1

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/views/Snackbar;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 71
    new-instance v2, Lcom/android/launcher3/views/Snackbar;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .local v2, "snackbar":Lcom/android/launcher3/views/Snackbar;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/views/Snackbar;->setOrientation(I)V

    .line 74
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/android/launcher3/views/Snackbar;->setGravity(I)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 76
    .local v5, "res":Landroid/content/res/Resources;
    sget v6, Lcom/android/launcher3/R$dimen;->snackbar_elevation:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/views/Snackbar;->setElevation(F)V

    .line 77
    sget v6, Lcom/android/launcher3/R$dimen;->snackbar_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 78
    .local v6, "padding":I
    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/android/launcher3/views/Snackbar;->setPadding(IIII)V

    .line 79
    sget v7, Lcom/android/launcher3/R$drawable;->round_rect_primary:I

    invoke-virtual {v2, v7}, Lcom/android/launcher3/views/Snackbar;->setBackgroundResource(I)V

    .line 81
    iput-boolean v3, v2, Lcom/android/launcher3/views/Snackbar;->mIsOpen:Z

    .line 82
    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    .line 83
    .local v3, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v3, v2}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v2}, Lcom/android/launcher3/views/Snackbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 86
    .local v7, "params":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    const/16 v8, 0x51

    iput v8, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->gravity:I

    .line 87
    sget v8, Lcom/android/launcher3/R$dimen;->snackbar_height:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 88
    sget v8, Lcom/android/launcher3/R$dimen;->snackbar_max_margin_left_right:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 89
    .local v8, "maxMarginLeftRight":I
    sget v9, Lcom/android/launcher3/R$dimen;->snackbar_min_margin_left_right:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 90
    .local v9, "minMarginLeftRight":I
    sget v10, Lcom/android/launcher3/R$dimen;->snackbar_margin_bottom:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 91
    .local v10, "marginBottom":I
    sget v11, Lcom/android/launcher3/R$dimen;->snackbar_max_width:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 92
    .local v11, "absoluteMaxWidth":I
    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v12}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v12

    .line 93
    .local v12, "insets":Landroid/graphics/Rect;
    nop

    .line 94
    invoke-virtual {v3}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v13

    mul-int/lit8 v14, v9, 0x2

    sub-int/2addr v13, v14

    iget v14, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iget v14, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    .line 93
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 96
    .local v13, "maxWidth":I
    nop

    .line 97
    invoke-virtual {v3}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v14

    mul-int/lit8 v15, v8, 0x2

    sub-int/2addr v14, v15

    iget v15, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    iget v15, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    .line 96
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 99
    .local v14, "minWidth":I
    iput v14, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 100
    iget v15, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    invoke-virtual {v7, v4, v4, v4, v15}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->setMargins(IIII)V

    .line 102
    sget v15, Lcom/android/launcher3/R$id;->label:I

    invoke-virtual {v2, v15}, Lcom/android/launcher3/views/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 103
    .local v15, "labelView":Landroid/widget/TextView;
    move/from16 v4, p1

    move-object/from16 v16, v3

    .end local v3    # "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    .local v16, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "labelText":Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v4, Lcom/android/launcher3/R$id;->action:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/views/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 108
    .local v4, "actionView":Landroid/widget/TextView;
    move/from16 v17, v8

    .end local v8    # "maxMarginLeftRight":I
    .local v17, "maxMarginLeftRight":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 109
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "actionText":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 111
    move/from16 v18, v9

    .end local v9    # "minMarginLeftRight":I
    .local v18, "minMarginLeftRight":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v1, v9

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v1, v9

    .line 112
    .local v1, "actionWidth":F
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v9, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda1;

    move/from16 v19, v1

    move-object/from16 v1, p4

    .end local v1    # "actionWidth":F
    .local v19, "actionWidth":F
    invoke-direct {v9, v1, v2}, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .end local v8    # "actionText":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v18    # "minMarginLeftRight":I
    .end local v19    # "actionWidth":F
    .restart local v9    # "minMarginLeftRight":I
    :cond_0
    move-object/from16 v1, p4

    move/from16 v18, v9

    .end local v9    # "minMarginLeftRight":I
    .restart local v18    # "minMarginLeftRight":I
    const/4 v8, 0x0

    .line 122
    .local v8, "actionWidth":F
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    move/from16 v19, v8

    .line 125
    .end local v8    # "actionWidth":F
    .restart local v19    # "actionWidth":F
    :goto_0
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    add-float v8, v8, v19

    float-to-int v8, v8

    .line 126
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    .line 128
    .local v8, "totalContentWidth":I
    iget v9, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    if-le v8, v9, :cond_2

    .line 130
    if-gt v8, v13, :cond_1

    .line 131
    iput v8, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    goto :goto_1

    .line 135
    :cond_1
    sget v9, Lcom/android/launcher3/R$dimen;->snackbar_content_height:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 136
    .local v9, "textHeight":I
    sget v1, Lcom/android/launcher3/R$dimen;->snackbar_min_text_size:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 137
    .local v1, "textSizePx":F
    move-object/from16 v20, v3

    .end local v3    # "labelText":Ljava/lang/String;
    .local v20, "labelText":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 138
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v21, v5

    .end local v5    # "res":Landroid/content/res/Resources;
    .local v21, "res":Landroid/content/res/Resources;
    mul-int/lit8 v5, v9, 0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    mul-int/lit8 v5, v9, 0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v15, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    iget v3, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    add-int/2addr v3, v9

    iput v3, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 143
    iput v13, v7, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    goto :goto_1

    .line 128
    .end local v1    # "textSizePx":F
    .end local v9    # "textHeight":I
    .end local v20    # "labelText":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    .restart local v3    # "labelText":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 147
    .end local v3    # "labelText":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v20    # "labelText":Ljava/lang/String;
    .restart local v21    # "res":Landroid/content/res/Resources;
    :goto_1
    move-object/from16 v1, p3

    iput-object v1, v2, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    .line 148
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/views/Snackbar;->setAlpha(F)V

    .line 149
    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Lcom/android/launcher3/views/Snackbar;->setScaleX(F)V

    .line 150
    invoke-virtual {v2, v3}, Lcom/android/launcher3/views/Snackbar;->setScaleY(F)V

    .line 151
    invoke-virtual {v2}, Lcom/android/launcher3/views/Snackbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 152
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object v9, v4

    .end local v4    # "actionView":Landroid/widget/TextView;
    .local v9, "actionView":Landroid/widget/TextView;
    const-wide/16 v4, 0xb4

    .line 156
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    .line 157
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 159
    const/16 v3, 0xfa0

    const/4 v4, 0x6

    invoke-static {v0, v3, v4}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result v3

    .line 161
    .local v3, "timeout":I
    new-instance v4, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    int-to-long v0, v3

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/launcher3/views/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method

.method public static show(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "labelStringRedId"    # I
    .param p2, "onDismissed"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 64
    .local p0, "activity":Landroid/content/Context;, "TT;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 166
    iget-boolean v0, p0, Lcom/android/launcher3/views/Snackbar;->mIsOpen:Z

    if-eqz v0, :cond_1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/views/Snackbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/Snackbar$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/Snackbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 177
    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    .line 179
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/Snackbar;->mIsOpen:Z

    .line 181
    :cond_1
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 192
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 199
    .local v0, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/Snackbar;->close(Z)V

    .line 203
    .end local v0    # "dl":Lcom/android/launcher3/views/BaseDragLayer;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
