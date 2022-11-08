.class final Lcom/android/quickstep/views/FloatingWidgetBackgroundView;
.super Landroid/view/View;
.source "FloatingWidgetBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;
    }
.end annotation


# instance fields
.field private final mBackgroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

.field private final mFallbackDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mFinalRadius:F

.field private final mForegroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

.field private mInitialOutlineRadius:F

.field private mIsUsingFallback:Z

.field private mOriginalBackground:Landroid/graphics/drawable/Drawable;

.field private mOriginalForeground:Landroid/graphics/drawable/Drawable;

.field private mOutlineRadius:F

.field private mSourceView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOutlineRadius(Lcom/android/quickstep/views/FloatingWidgetBackgroundView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOutlineRadius:F

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mFallbackDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 44
    new-instance v0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;-><init>(Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties-IA;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mForegroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    .line 45
    new-instance v0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;-><init>(Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties-IA;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mBackgroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    .line 59
    new-instance v0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;-><init>(Lcom/android/quickstep/views/FloatingWidgetBackgroundView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setClipToOutline(Z)V

    .line 66
    return-void
.end method

.method private static getMaxRadius(Landroid/graphics/drawable/Drawable;)F
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 140
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    .line 142
    .local v0, "cornerRadii":[F
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    .line 143
    .local v1, "cornerRadius":F
    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v4, 0x0

    array-length v5, v0

    .line 143
    invoke-static {v4, v5}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$$ExternalSyntheticLambda0;-><init>([F)V

    .line 144
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/DoubleStream;->max()Ljava/util/OptionalDouble;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide v2

    :goto_0
    nop

    .line 145
    .local v2, "radiiMax":D
    double-to-float v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method private static getOutlineRadius(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/view/View;)F
    .locals 1
    .param p0, "hostView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p1, "v"    # Landroid/view/View;

    .line 156
    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->hasEnforcedCornerRadius()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result v0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->getRadius()F

    move-result v0

    return v0

    .line 163
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportedDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 150
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 151
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 150
    :goto_1
    return v0
.end method

.method private isUninitialized()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mSourceView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getMaxRadius$0([FI)D
    .locals 2
    .param p0, "cornerRadii"    # [F
    .param p1, "i"    # I

    .line 144
    aget v0, p0, p1

    float-to-double v0, v0

    return-wide v0
.end method


# virtual methods
.method finish()V
    .locals 2

    .line 112
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mSourceView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mSourceView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_2
    return-void
.end method

.method getMaximumRadius()F
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    iget v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mInitialOutlineRadius:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalForeground:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->getMaxRadius(Landroid/graphics/drawable/Drawable;)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-static {v2}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->getMaxRadius(Landroid/graphics/drawable/Drawable;)F

    move-result v2

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method init(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/view/View;FI)V
    .locals 3
    .param p1, "hostView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "backgroundView"    # Landroid/view/View;
    .param p3, "finalRadius"    # F
    .param p4, "fallbackBackgroundColor"    # I

    .line 70
    iput p3, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mFinalRadius:F

    .line 71
    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mSourceView:Landroid/view/View;

    .line 72
    invoke-static {p1, p2}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->getOutlineRadius(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mInitialOutlineRadius:F

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mIsUsingFallback:Z

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->isSupportedDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalForeground:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mForegroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    .line 77
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->init(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mForegroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    invoke-static {v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->-$$Nest$fgetmDrawable(Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalForeground:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    .local v1, "clipPlaceholder":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mSourceView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .end local v1    # "clipPlaceholder":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->isSupportedDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mBackgroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    .line 87
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->init(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mBackgroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    invoke-static {v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->-$$Nest$fgetmDrawable(Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    .restart local v1    # "clipPlaceholder":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mSourceView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "clipPlaceholder":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mFallbackDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mFallbackDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mIsUsingFallback:Z

    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    nop

    .line 98
    :goto_1
    return-void
.end method

.method recycle()V
    .locals 2

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mSourceView:Landroid/view/View;

    .line 119
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalForeground:Landroid/graphics/drawable/Drawable;

    .line 120
    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOutlineRadius:F

    .line 122
    iput v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mFinalRadius:F

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method

.method update(FF)V
    .locals 3
    .param p1, "cornerRadiusProgress"    # F
    .param p2, "fallbackAlpha"    # F

    .line 102
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mInitialOutlineRadius:F

    iget v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mFinalRadius:F

    sub-float v2, v1, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mOutlineRadius:F

    .line 105
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mForegroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->updateDrawable(FF)V

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mBackgroundProperties:Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;

    iget v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mFinalRadius:F

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->updateDrawable(FF)V

    .line 107
    iget-boolean v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->mIsUsingFallback:Z

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->setAlpha(F)V

    .line 108
    return-void
.end method
