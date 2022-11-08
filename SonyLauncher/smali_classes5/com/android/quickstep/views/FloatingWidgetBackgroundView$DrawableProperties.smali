.class Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;
.super Ljava/lang/Object;
.source "FloatingWidgetBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/FloatingWidgetBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableProperties"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalRadii:[F

.field private mOriginalRadius:F

.field private final mTmpRadii:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetmDrawable(Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mTmpRadii:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;-><init>()V

    return-void
.end method


# virtual methods
.method init(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 177
    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mOriginalRadius:F

    .line 180
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mOriginalRadii:[F

    .line 181
    return-void
.end method

.method updateDrawable(FF)V
    .locals 5
    .param p1, "finalRadius"    # F
    .param p2, "progress"    # F

    .line 191
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_0

    return-void

    .line 192
    :cond_0
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 193
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mOriginalRadii:[F

    if-eqz v1, :cond_2

    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mOriginalRadii:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mTmpRadii:[F

    aget v2, v2, v1

    sub-float v4, p1, v2

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    aput v2, v3, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mTmpRadii:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_1

    .line 199
    :cond_2
    iget v1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$DrawableProperties;->mOriginalRadius:F

    sub-float v2, p1, v1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 201
    :goto_1
    return-void
.end method
