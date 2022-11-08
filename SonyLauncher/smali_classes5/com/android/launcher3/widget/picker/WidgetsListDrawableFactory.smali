.class final Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;
.super Ljava/lang/Object;
.source "WidgetsListDrawableFactory.java"


# instance fields
.field private final mMiddleCornerRadius:F

.field private final mRippleColor:Landroid/content/res/ColorStateList;

.field private final mSurfaceColor:Landroid/content/res/ColorStateList;

.field private final mTopBottomCornerRadius:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_top_bottom_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mTopBottomCornerRadius:F

    .line 47
    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_content_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mMiddleCornerRadius:F

    .line 48
    sget v1, Lcom/android/launcher3/R$color;->surface:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mSurfaceColor:Landroid/content/res/ColorStateList;

    .line 49
    nop

    .line 50
    const v1, 0x101042c

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 49
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mRippleColor:Landroid/content/res/ColorStateList;

    .line 51
    return-void
.end method

.method private createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "topRadius"    # F
    .param p2, "bottomRadius"    # F

    .line 97
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 98
    .local v0, "backgroundMask":Landroid/graphics/drawable/GradientDrawable;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mSurfaceColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 100
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 v1, 0x1

    aput p1, v2, v1

    const/4 v1, 0x2

    aput p1, v2, v1

    const/4 v1, 0x3

    aput p1, v2, v1

    const/4 v1, 0x4

    aput p2, v2, v1

    const/4 v1, 0x5

    aput p2, v2, v1

    const/4 v1, 0x6

    aput p2, v2, v1

    const/4 v1, 0x7

    aput p2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 111
    return-object v0
.end method


# virtual methods
.method createContentBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 85
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 86
    .local v0, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->MIDDLE:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mMiddleCornerRadius:F

    .line 88
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 89
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->LAST:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mTopBottomCornerRadius:F

    .line 91
    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 92
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mRippleColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, v2, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method createHeaderBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 58
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 59
    .local v0, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->SINGLE:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mTopBottomCornerRadius:F

    .line 61
    invoke-direct {p0, v2, v2}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 62
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->FIRST_EXPANDED:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mTopBottomCornerRadius:F

    .line 64
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 65
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->FIRST:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mTopBottomCornerRadius:F

    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mMiddleCornerRadius:F

    .line 67
    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->MIDDLE_EXPANDED:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mMiddleCornerRadius:F

    .line 70
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 71
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->MIDDLE:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mMiddleCornerRadius:F

    .line 73
    invoke-direct {p0, v2, v2}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    sget-object v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->LAST:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mMiddleCornerRadius:F

    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mTopBottomCornerRadius:F

    .line 76
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createRoundedRectDrawable(FF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 77
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->mRippleColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, v2, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
