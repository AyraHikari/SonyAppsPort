.class public Lcom/android/launcher3/icons/IconProvider$ThemeData;
.super Ljava/lang/Object;
.source "IconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeData"
.end annotation


# instance fields
.field final mResID:I

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resID"    # I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    .line 262
    iput p2, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResID:I

    .line 263
    return-void
.end method


# virtual methods
.method loadPaddedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 270
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object v0, v1

    .line 271
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    div-float/2addr v1, v4

    .line 272
    .local v1, "inset":F
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 273
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    return-object v2
.end method
