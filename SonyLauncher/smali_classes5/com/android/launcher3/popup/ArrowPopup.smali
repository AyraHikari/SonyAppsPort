.class public abstract Lcom/android/launcher3/popup/ArrowPopup;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "ArrowPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/AbstractFloatingView;"
    }
.end annotation


# static fields
.field private static final DARK_COLOR_EXTRACTION_INDEX:I = 0x1060034

.field private static final LIGHT_COLOR_EXTRACTION_INDEX:I = 0x1060046


# instance fields
.field protected CLOSE_CHILD_FADE_DURATION:I

.field protected CLOSE_CHILD_FADE_START_DELAY:I

.field protected CLOSE_DURATION:I

.field protected CLOSE_FADE_DURATION:I

.field protected CLOSE_FADE_START_DELAY:I

.field protected OPEN_CHILD_FADE_DURATION:I

.field protected OPEN_CHILD_FADE_START_DELAY:I

.field protected OPEN_DURATION:I

.field protected OPEN_FADE_DURATION:I

.field protected OPEN_FADE_START_DELAY:I

.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mArrow:Landroid/view/View;

.field protected mArrowColor:I

.field protected final mArrowHeight:I

.field protected final mArrowOffsetHorizontal:I

.field protected final mArrowOffsetVertical:I

.field protected final mArrowPointRadius:I

.field protected final mArrowWidth:I

.field private final mBackgroundColor:I

.field protected final mColorExtractors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/LocalColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorIds:[I

.field protected mDeferContainerRemoval:Z

.field protected final mElevation:F

.field protected mGravity:I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mIsAboveIcon:Z

.field protected mIsLeftAligned:Z

.field protected final mIsRtl:Z

.field private final mIterateChildrenTag:Ljava/lang/String;

.field private final mMargin:I

.field private mOnCloseCallback:Ljava/lang/Runnable;

.field protected mOpenCloseAnimator:Landroid/animation/AnimatorSet;

.field protected final mOutlineRadius:F

.field private final mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

.field private final mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected shouldScaleArrow:Z


# direct methods
.method static bridge synthetic -$$Nest$minitColorExtractionLocations(Lcom/android/launcher3/popup/ArrowPopup;Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->initColorExtractionLocations(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 192
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 188
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 137
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/16 v2, 0x114

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_DURATION:I

    .line 81
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_FADE_START_DELAY:I

    .line 82
    const/16 v3, 0x26

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_FADE_DURATION:I

    .line 83
    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_CHILD_FADE_START_DELAY:I

    .line 84
    const/16 v3, 0x4c

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_CHILD_FADE_DURATION:I

    .line 86
    const/16 v3, 0xc8

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_DURATION:I

    .line 87
    const/16 v3, 0x8c

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_START_DELAY:I

    .line 88
    const/16 v4, 0x32

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_DURATION:I

    .line 89
    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_CHILD_FADE_START_DELAY:I

    .line 90
    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_CHILD_FADE_DURATION:I

    .line 96
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    .line 118
    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->shouldScaleArrow:Z

    .line 123
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallback:Ljava/lang/Runnable;

    .line 138
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v4

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    .line 143
    sget v6, Lcom/android/launcher3/R$attr;->popupColorPrimary:I

    invoke-static {v1, v6}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mBackgroundColor:I

    .line 144
    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/launcher3/R$dimen;->deep_shortcuts_elevation:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 149
    .local v7, "resources":Landroid/content/res/Resources;
    sget v8, Lcom/android/launcher3/R$dimen;->popup_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mMargin:I

    .line 150
    sget v8, Lcom/android/launcher3/R$dimen;->popup_arrow_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    .line 151
    sget v9, Lcom/android/launcher3/R$dimen;->popup_arrow_height:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    .line 152
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    .line 153
    new-instance v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v11, v8, v9}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    sget v9, Lcom/android/launcher3/R$dimen;->popup_arrow_vertical_offset:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    .line 155
    sget v9, Lcom/android/launcher3/R$dimen;->popup_arrow_horizontal_center_offset:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v10, 0x2

    div-int/2addr v8, v10

    sub-int/2addr v9, v8

    iput v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    .line 157
    sget v8, Lcom/android/launcher3/R$dimen;->popup_arrow_corner_radius:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowPointRadius:I

    .line 159
    sget v8, Lcom/android/launcher3/R$dimen;->popup_smaller_radius:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 160
    .local v8, "smallerRadius":I
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

    .line 161
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 162
    const/16 v11, 0x8

    new-array v12, v11, [F

    aput v4, v12, v2

    const/4 v13, 0x1

    aput v4, v12, v13

    aput v4, v12, v10

    const/4 v14, 0x3

    aput v4, v12, v14

    int-to-float v15, v8

    const/16 v16, 0x4

    aput v15, v12, v16

    int-to-float v15, v8

    const/16 v17, 0x5

    aput v15, v12, v17

    int-to-float v15, v8

    const/16 v18, 0x6

    aput v15, v12, v18

    int-to-float v15, v8

    const/16 v19, 0x7

    aput v15, v12, v19

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 165
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

    .line 166
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 167
    new-array v6, v11, [F

    int-to-float v11, v8

    aput v11, v6, v2

    int-to-float v11, v8

    aput v11, v6, v13

    int-to-float v11, v8

    aput v11, v6, v10

    int-to-float v11, v8

    aput v11, v6, v14

    aput v4, v6, v16

    aput v4, v6, v17

    aput v4, v6, v18

    aput v4, v6, v19

    invoke-virtual {v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/android/launcher3/R$string;->popup_container_iterate_children:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIterateChildrenTag:Ljava/lang/String;

    .line 172
    check-cast v5, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->shouldUseColorExtractionForPopup()Z

    move-result v4

    .line 173
    .local v4, "shouldUseColorExtraction":Z
    if-eqz v4, :cond_0

    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LOCAL_COLOR_POPUPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorExtractors:Ljava/util/List;

    goto :goto_0

    .line 176
    :cond_0
    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorExtractors:Ljava/util/List;

    .line 179
    :goto_0
    if-eqz v4, :cond_1

    .line 180
    new-array v3, v14, [I

    sget v5, Lcom/android/launcher3/R$color;->popup_shade_first:I

    aput v5, v3, v2

    sget v2, Lcom/android/launcher3/R$color;->popup_shade_second:I

    aput v2, v3, v13

    sget v2, Lcom/android/launcher3/R$color;->popup_shade_third:I

    aput v2, v3, v10

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    goto :goto_1

    .line 183
    :cond_1
    new-array v3, v13, [I

    sget v5, Lcom/android/launcher3/R$color;->popup_shade_first:I

    aput v5, v3, v2

    iput-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    .line 185
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/popup/ArrowPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/popup/ArrowPopup;

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->announceAccessibilityChanges()V

    return-void
.end method

.method private fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "alphaValues"    # [F
    .param p3, "startDelay"    # J
    .param p5, "duration"    # J
    .param p7, "out"    # Landroid/animation/AnimatorSet;

    .line 749
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    move-object v8, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_3

    .line 750
    move-object v10, p1

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 751
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v11, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 752
    move-object v12, p0

    iget-object v0, v12, Lcom/android/launcher3/popup/ArrowPopup;->mIterateChildrenTag:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    move-object v1, v11

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    .line 754
    goto :goto_2

    .line 756
    :cond_0
    move-object v0, v11

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_1
    if-ltz v0, :cond_1

    .line 757
    move-object v1, v11

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 758
    .local v1, "childView":Landroid/view/View;
    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 759
    sget-object v2, Lcom/android/launcher3/popup/ArrowPopup;->ALPHA:Landroid/util/Property;

    invoke-static {v1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 760
    .local v2, "childFade":Landroid/animation/ValueAnimator;
    move-wide/from16 v3, p3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 761
    move-wide/from16 v5, p5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 762
    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 764
    move-object/from16 v7, p7

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 756
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "childFade":Landroid/animation/ValueAnimator;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    goto :goto_2

    .line 751
    .end local v0    # "j":I
    :cond_2
    move-object v12, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    .line 749
    .end local v11    # "view":Landroid/view/View;
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_3
    move-object v12, p0

    move-object v10, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    .line 768
    .end local v9    # "i":I
    return-void
.end method

.method private getArrowLeft()I
    .locals 2

    .line 473
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    .line 474
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    return v0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getExtractedColor(Landroid/util/SparseIntArray;)I
    .locals 2
    .param p1, "colors"    # Landroid/util/SparseIntArray;

    .line 325
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const v0, 0x1060034

    goto :goto_0

    .line 327
    :cond_0
    const v0, 0x1060046

    :goto_0
    nop

    .line 328
    .local v0, "index":I
    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1
.end method

.method private getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .locals 18
    .param p1, "isOpening"    # Z
    .param p2, "totalDuration"    # I
    .param p3, "fadeStartDelay"    # I
    .param p4, "fadeDuration"    # I
    .param p5, "childFadeStartDelay"    # I
    .param p6, "childFadeDuration"    # I
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 712
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v11, v0

    .line 713
    .local v11, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v0, 0x2

    new-array v1, v0, [F

    if-eqz p1, :cond_0

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_0
    fill-array-data v1, :array_1

    :goto_0
    move-object v2, v1

    .line 714
    .local v2, "alphaValues":[F
    new-array v0, v0, [F

    if-eqz p1, :cond_1

    fill-array-data v0, :array_2

    goto :goto_1

    :cond_1
    fill-array-data v0, :array_3

    :goto_1
    move-object v12, v0

    .line 716
    .local v12, "scaleValues":[F
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 717
    .local v13, "fade":Landroid/animation/ValueAnimator;
    move/from16 v14, p3

    int-to-long v0, v14

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 718
    move/from16 v15, p4

    int-to-long v0, v15

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 719
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 720
    new-instance v0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda1;

    invoke-direct {v0, v8}, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 725
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 727
    iget-boolean v0, v8, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    invoke-virtual {v8, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setPivotX(F)V

    .line 728
    iget-boolean v0, v8, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, v0

    :cond_3
    invoke-virtual {v8, v1}, Lcom/android/launcher3/popup/ArrowPopup;->setPivotY(F)V

    .line 729
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v8, v0, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 730
    .local v7, "scale":Landroid/animation/Animator;
    int-to-long v0, v9

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 731
    invoke-virtual {v7, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 732
    invoke-virtual {v11, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 734
    iget-boolean v0, v8, Lcom/android/launcher3/popup/ArrowPopup;->shouldScaleArrow:Z

    if-eqz v0, :cond_4

    .line 735
    iget-object v0, v8, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v0, v1, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 737
    .local v0, "arrowScaleAnimator":Landroid/animation/Animator;
    int-to-long v3, v9

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 738
    invoke-virtual {v0, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 739
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 742
    .end local v0    # "arrowScaleAnimator":Landroid/animation/Animator;
    :cond_4
    move/from16 v5, p5

    int-to-long v3, v5

    move/from16 v6, p6

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-wide/from16 v5, v16

    move-object/from16 v16, v7

    .end local v7    # "scale":Landroid/animation/Animator;
    .local v16, "scale":Landroid/animation/Animator;
    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    .line 744
    return-object v11

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private initColorExtractionLocations(Lcom/android/launcher3/Launcher;)V
    .locals 10
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 351
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mColorExtractors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 355
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    if-nez v0, :cond_1

    .line 356
    return-void

    .line 359
    :cond_1
    const/4 v1, 0x1

    .line 360
    .local v1, "firstVisibleChild":Z
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v2

    .line 361
    .local v2, "screenId":I
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    .line 363
    .local v3, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    .line 366
    .local v4, "viewAlignedWithArrow":[Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildrenForColorExtraction()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 367
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 368
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 369
    .local v7, "pos":Landroid/graphics/Rect;
    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 370
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 371
    invoke-static {p1}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object v8

    .line 372
    .local v8, "extractor":Lcom/android/launcher3/widget/LocalColorExtractor;
    invoke-virtual {v8, v7, v3, v2}, Lcom/android/launcher3/widget/LocalColorExtractor;->setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V

    .line 373
    new-instance v9, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, v6, v4}, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/popup/ArrowPopup;Landroid/view/View;[Landroid/view/View;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/widget/LocalColorExtractor;->setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V

    .line 390
    iget-object v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mColorExtractors:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-boolean v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v9, :cond_2

    if-eqz v1, :cond_3

    .line 393
    :cond_2
    const/4 v9, 0x0

    aput-object v6, v4, v9

    .line 395
    :cond_3
    const/4 v1, 0x0

    .line 398
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "pos":Landroid/graphics/Rect;
    .end local v8    # "extractor":Lcom/android/launcher3/widget/LocalColorExtractor;
    :cond_4
    goto :goto_0

    .line 400
    :cond_5
    return-void
.end method

.method static synthetic lambda$closeComplete$3(Lcom/android/launcher3/widget/LocalColorExtractor;)V
    .locals 1
    .param p0, "e"    # Lcom/android/launcher3/widget/LocalColorExtractor;

    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LocalColorExtractor;->setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V

    return-void
.end method

.method private orientAboutObject(ZZ)V
    .locals 19
    .param p1, "allowAlignLeft"    # Z
    .param p2, "allowAlignRight"    # Z

    .line 551
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/popup/ArrowPopup;->measure(II)V

    .line 553
    iget v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    iget v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    add-int/2addr v2, v3

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->popup_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 556
    .local v2, "extraVerticalSpace":I
    const/4 v3, 0x0

    .line 557
    .local v3, "numVisibleChildren":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 558
    invoke-virtual {v0, v4}, Lcom/android/launcher3/popup/ArrowPopup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 559
    add-int/lit8 v3, v3, 0x1

    .line 557
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 562
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v4, v3, -0x1

    iget v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mMargin:I

    mul-int/2addr v4, v6

    .line 563
    .local v4, "childMargins":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    .line 564
    .local v6, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 566
    .local v7, "width":I
    iget-object v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/popup/ArrowPopup;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v8

    .line 568
    .local v8, "dragLayer":Lcom/android/launcher3/InsettableFrameLayout;
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v9

    .line 571
    .local v9, "insets":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 572
    .local v10, "leftAlignedX":I
    iget-object v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v7

    .line 573
    .local v11, "rightAlignedX":I
    iget-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v12, :cond_2

    move/from16 v12, p1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    move v12, v5

    goto :goto_1

    :cond_3
    move v12, v1

    :goto_1
    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    .line 574
    if-eqz v12, :cond_4

    move v12, v10

    goto :goto_2

    :cond_4
    move v12, v11

    .line 577
    .local v12, "x":I
    :goto_2
    iget-object v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 578
    .local v13, "iconWidth":I
    div-int/lit8 v14, v13, 0x2

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    sub-int/2addr v14, v15

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 579
    .local v14, "xOffset":I
    iget-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v15, :cond_5

    move v15, v14

    goto :goto_3

    :cond_5
    neg-int v15, v14

    :goto_3
    add-int/2addr v12, v15

    .line 582
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    goto :goto_9

    .line 586
    :cond_6
    add-int v15, v12, v7

    iget v5, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v5

    .line 587
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getWidth()I

    move-result v5

    iget v1, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    if-ge v15, v5, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 588
    .local v1, "canBeLeftAligned":Z
    :goto_4
    iget v5, v9, Landroid/graphics/Rect;->left:I

    if-le v12, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    .line 589
    .local v5, "canBeRightAligned":Z
    :goto_5
    iget-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v15, :cond_9

    if-nez v1, :cond_a

    :cond_9
    if-nez v15, :cond_b

    if-eqz v5, :cond_b

    :cond_a
    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    .line 591
    .local v16, "alignmentStillValid":Z
    :goto_6
    if-nez v16, :cond_e

    .line 593
    if-eqz p1, :cond_c

    if-nez v15, :cond_c

    move/from16 v17, v1

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "canBeLeftAligned":Z
    .local v17, "canBeLeftAligned":Z
    :goto_7
    if-eqz p2, :cond_d

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    :goto_8
    invoke-direct {v0, v1, v15}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject(ZZ)V

    .line 595
    return-void

    .line 591
    .end local v17    # "canBeLeftAligned":Z
    .restart local v1    # "canBeLeftAligned":Z
    :cond_e
    move/from16 v17, v1

    .line 600
    .end local v1    # "canBeLeftAligned":Z
    .end local v5    # "canBeRightAligned":Z
    .end local v16    # "alignmentStillValid":Z
    :goto_9
    iget-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 601
    .local v1, "iconHeight":I
    iget-object v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 602
    .local v5, "y":I
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getTop()I

    move-result v15

    move/from16 v16, v3

    .end local v3    # "numVisibleChildren":I
    .local v16, "numVisibleChildren":I
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v3

    if-le v5, v15, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    .line 603
    if-nez v3, :cond_10

    .line 604
    iget-object v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    add-int v5, v3, v2

    .line 605
    sub-int/2addr v6, v2

    .line 609
    :cond_10
    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v3

    .line 610
    iget v3, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    .line 612
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 613
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    add-int/2addr v3, v6

    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getBottom()I

    move-result v15

    move/from16 v17, v1

    .end local v1    # "iconHeight":I
    .local v17, "iconHeight":I
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    if-le v3, v15, :cond_14

    .line 615
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 617
    add-int v1, v10, v13

    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 618
    .local v1, "rightSide":I
    sub-int v3, v11, v13

    iget v15, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v15

    .line 619
    .local v3, "leftSide":I
    iget-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v15, :cond_12

    .line 620
    add-int v15, v1, v7

    move/from16 v18, v2

    .end local v2    # "extraVerticalSpace":I
    .local v18, "extraVerticalSpace":I
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getRight()I

    move-result v2

    if-ge v15, v2, :cond_11

    .line 621
    move v2, v1

    .line 622
    .end local v12    # "x":I
    .local v2, "x":I
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_b

    .line 624
    .end local v2    # "x":I
    .restart local v12    # "x":I
    :cond_11
    move v2, v3

    .line 625
    .end local v12    # "x":I
    .restart local v2    # "x":I
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    const/4 v12, 0x1

    goto :goto_b

    .line 628
    .end local v18    # "extraVerticalSpace":I
    .local v2, "extraVerticalSpace":I
    .restart local v12    # "x":I
    :cond_12
    move/from16 v18, v2

    const/4 v15, 0x0

    .end local v2    # "extraVerticalSpace":I
    .restart local v18    # "extraVerticalSpace":I
    invoke-virtual {v8}, Lcom/android/launcher3/InsettableFrameLayout;->getLeft()I

    move-result v2

    if-le v3, v2, :cond_13

    .line 629
    move v2, v3

    .line 630
    .end local v12    # "x":I
    .local v2, "x":I
    iput-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    const/4 v12, 0x1

    goto :goto_b

    .line 632
    .end local v2    # "x":I
    .restart local v12    # "x":I
    :cond_13
    move v2, v1

    .line 633
    .end local v12    # "x":I
    .restart local v2    # "x":I
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    .line 636
    :goto_b
    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    move v12, v2

    goto :goto_c

    .line 613
    .end local v1    # "rightSide":I
    .end local v3    # "leftSide":I
    .end local v18    # "extraVerticalSpace":I
    .local v2, "extraVerticalSpace":I
    .restart local v12    # "x":I
    :cond_14
    move/from16 v18, v2

    .line 639
    .end local v2    # "extraVerticalSpace":I
    .restart local v18    # "extraVerticalSpace":I
    :goto_c
    int-to-float v1, v12

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->setX(F)V

    .line 640
    iget v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 641
    return-void

    .line 644
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 645
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 646
    .local v2, "arrowLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v3, :cond_16

    .line 647
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 648
    nop

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/views/BaseDragLayer;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v3, v15

    iget v15, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v15

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 650
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v15, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v15

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    sub-int/2addr v3, v15

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v15

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_d

    .line 653
    :cond_16
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 654
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 655
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v15, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v15

    iget v15, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v15

    iget v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    sub-int/2addr v3, v15

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 657
    :goto_d
    return-void
.end method

.method private reverseOrder(I)V
    .locals 4
    .param p1, "viewsToFlip"    # I

    .line 457
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildCount()I

    move-result v0

    .line 458
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v1, "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 460
    if-ne v2, p1, :cond_0

    .line 461
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 463
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->removeAllViews()V

    .line 467
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 468
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/ArrowPopup;->addView(Landroid/view/View;)V

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 470
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected addArrow()V
    .locals 3

    .line 487
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 488
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getArrowLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 490
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->updateArrowColor()V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 499
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 500
    return-void
.end method

.method protected addPreDrawForColorExtraction(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 332
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/popup/ArrowPopup$1;-><init>(Lcom/android/launcher3/popup/ArrowPopup;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 340
    return-void
.end method

.method protected animateClose()V
    .locals 9

    .line 771
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 772
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 777
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 779
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_DURATION:I

    iget v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_START_DELAY:I

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_DURATION:I

    iget v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_CHILD_FADE_START_DELAY:I

    iget v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_CHILD_FADE_DURATION:I

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->ACCELERATED_EASE:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/popup/ArrowPopup;->getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 782
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V

    .line 783
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/ArrowPopup$3;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 794
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 795
    return-void
.end method

.method protected animateOpen()V
    .locals 9

    .line 692
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setVisibility(I)V

    .line 694
    iget v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_DURATION:I

    iget v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_FADE_START_DELAY:I

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_FADE_DURATION:I

    iget v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_CHILD_FADE_START_DELAY:I

    iget v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_CHILD_FADE_DURATION:I

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/popup/ArrowPopup;->getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 697
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V

    .line 698
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/ArrowPopup$2;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 707
    return-void
.end method

.method public assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 231
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    .line 232
    return-void
.end method

.method protected assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V
    .locals 12
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "backgroundColor"    # I

    .line 239
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x0

    .line 240
    .local v0, "colors":[I
    if-nez p2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 243
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 247
    .local v1, "count":I
    const/4 v2, 0x0

    .line 248
    .local v2, "totalVisibleShortcuts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 249
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 250
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 248
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 256
    .local v3, "numVisibleChild":I
    const/4 v4, 0x0

    .line 257
    .local v4, "numVisibleShortcut":I
    const/4 v5, 0x0

    .line 258
    .local v5, "lastView":Landroid/view/View;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 259
    .local v6, "colorAnimator":Landroid/animation/AnimatorSet;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v8, 0x0

    if-ge v7, v1, :cond_e

    .line 260
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 261
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_d

    .line 262
    if-eqz v5, :cond_3

    .line 263
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    .local v10, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mMargin:I

    iput v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 266
    .end local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move-object v5, v9

    .line 267
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    .restart local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 270
    if-eqz v0, :cond_4

    .line 271
    array-length v8, v0

    rem-int v8, v3, v8

    aget p2, v0, v8

    .line 274
    :cond_4
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LOCAL_COLOR_POPUPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-nez v8, :cond_6

    .line 276
    iget-boolean v8, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v8, :cond_5

    if-nez v3, :cond_5

    if-ne p1, p0, :cond_5

    .line 277
    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    goto :goto_2

    .line 278
    :cond_5
    if-eqz v8, :cond_6

    .line 279
    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    .line 283
    :cond_6
    :goto_2
    instance-of v8, v9, Landroid/view/ViewGroup;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIterateChildrenTag:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 284
    move-object v8, v9

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p0, v8, p2}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 286
    goto :goto_5

    .line 289
    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 290
    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    .line 291
    sget v8, Lcom/android/launcher3/R$drawable;->single_item_primary:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 292
    :cond_8
    if-le v2, v8, :cond_b

    .line 293
    if-nez v4, :cond_9

    .line 294
    iget-object v8, p0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 295
    :cond_9
    add-int/lit8 v8, v2, -0x1

    if-ne v4, v8, :cond_a

    .line 296
    iget-object v8, p0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 298
    :cond_a
    sget v8, Lcom/android/launcher3/R$drawable;->middle_item_primary:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 300
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 304
    :cond_b
    :goto_4
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LOCAL_COLOR_POPUPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-nez v8, :cond_c

    .line 305
    invoke-virtual {p0, v9, p2, v6}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    .line 308
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 259
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 312
    .end local v7    # "i":I
    :cond_e
    const-wide/16 v9, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 313
    invoke-virtual {p0, v8, v8}, Lcom/android/launcher3/popup/ArrowPopup;->measure(II)V

    .line 314
    return-void
.end method

.method protected closeComplete()V
    .locals 2

    .line 811
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 815
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 816
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    .line 817
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 819
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 820
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mColorExtractors:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 823
    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 825
    :cond_2
    return-void
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 1

    .line 688
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 683
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getChildrenForColorExtraction()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 835
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTargetObjectLocation(Landroid/graphics/Rect;)V
.end method

.method protected handleClose(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 197
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    .line 202
    :goto_0
    return-void
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            ")TR;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    return-object v0
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            "I)TR;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 219
    return-object v0
.end method

.method protected isShortcutOrWrapper(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 320
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    return v0
.end method

.method synthetic lambda$assignMarginsAndBackgrounds$0$com-android-launcher3-popup-ArrowPopup(I)I
    .locals 1
    .param p1, "r"    # I

    .line 243
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method synthetic lambda$getOpenCloseAnimator$2$com-android-launcher3-popup-ArrowPopup(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .line 721
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 722
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 723
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setAlpha(F)V

    .line 724
    return-void
.end method

.method synthetic lambda$initColorExtractionLocations$1$com-android-launcher3-popup-ArrowPopup(Landroid/view/View;[Landroid/view/View;Landroid/util/SparseIntArray;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewAlignedWithArrow"    # [Landroid/view/View;
    .param p3, "extractedColors"    # Landroid/util/SparseIntArray;

    .line 374
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 375
    .local v0, "colors":Landroid/animation/AnimatorSet;
    invoke-direct {p0, p3}, Lcom/android/launcher3/popup/ArrowPopup;->getExtractedColor(Landroid/util/SparseIntArray;)I

    move-result v1

    .line 376
    .local v1, "newColor":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    .line 377
    instance-of v2, p1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 378
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 379
    .local v2, "numChildren":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 380
    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 381
    .local v5, "childView":Landroid/view/View;
    invoke-virtual {p0, v5, v1, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    .line 379
    .end local v5    # "childView":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    .end local v4    # "i":I
    :cond_1
    aget-object v3, p2, v3

    if-ne v3, p1, :cond_2

    .line 384
    iput v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->updateArrowColor()V

    .line 387
    :cond_2
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 388
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    .line 805
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    return-void
.end method

.method protected onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    .line 800
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    return-void
.end method

.method protected onInflationComplete(Z)V
    .locals 0
    .param p1, "isReversed"    # Z

    .line 225
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 661
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/AbstractFloatingView;->onLayout(ZIIII)V

    .line 664
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 665
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 666
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getTranslationX()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getTranslationX()F

    move-result v2

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 669
    :cond_0
    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    .line 672
    :cond_1
    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->setX(F)V

    .line 674
    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_2
    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 677
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->setY(F)V

    .line 679
    :cond_3
    return-void
.end method

.method protected orientAboutObject()V
    .locals 1

    .line 540
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject(ZZ)V

    .line 541
    return-void
.end method

.method protected reorderAndShow(I)V
    .locals 2
    .param p1, "viewsToFlip"    # I

    .line 423
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->setupForDisplay()V

    .line 424
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    .line 425
    .local v0, "reverseOrder":Z
    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->reverseOrder(I)V

    .line 428
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onInflationComplete(Z)V

    .line 429
    invoke-virtual {p0, p0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->shouldAddArrow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->addArrow()V

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V

    .line 434
    return-void
.end method

.method protected setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "animatorSetOut"    # Landroid/animation/AnimatorSet;

    .line 406
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "color"

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 409
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 410
    .local v6, "oldColor":I
    new-array v4, v4, [I

    aput v6, v4, v3

    aput p2, v4, v2

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .end local v1    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "oldColor":I
    goto :goto_0

    .line 411
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 413
    .local v1, "cd":Landroid/graphics/drawable/ColorDrawable;
    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    .line 414
    .restart local v6    # "oldColor":I
    new-array v4, v4, [I

    aput v6, v4, v3

    aput p2, v4, v2

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 411
    .end local v1    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v6    # "oldColor":I
    :cond_1
    :goto_0
    nop

    .line 416
    :goto_1
    return-void
.end method

.method public setOnCloseCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 831
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallback:Ljava/lang/Runnable;

    .line 832
    return-void
.end method

.method protected setupForDisplay()V
    .locals 1

    .line 450
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setVisibility(I)V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsOpen:Z

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject()V

    .line 454
    return-void
.end method

.method protected shouldAddArrow()Z
    .locals 1

    .line 519
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 1

    .line 440
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->setupForDisplay()V

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onInflationComplete(Z)V

    .line 442
    invoke-virtual {p0, p0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->shouldAddArrow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->addArrow()V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V

    .line 447
    return-void
.end method

.method public showArrow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 483
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->shouldAddArrow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    return-void
.end method

.method protected updateArrowColor()V
    .locals 14

    .line 503
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup;, "Lcom/android/launcher3/popup/ArrowPopup<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    new-instance v13, Lcom/android/launcher3/popup/RoundedArrowDrawable;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    int-to-float v2, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    int-to-float v3, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowPointRadius:I

    int-to-float v4, v1

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    int-to-float v8, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    neg-int v1, v1

    int-to-float v9, v1

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    xor-int/lit8 v10, v1, 0x1

    iget-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget v12, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/popup/RoundedArrowDrawable;-><init>(FFFFFFFFZZI)V

    .line 504
    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->setElevation(F)V

    .line 511
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 513
    :cond_0
    return-void
.end method
