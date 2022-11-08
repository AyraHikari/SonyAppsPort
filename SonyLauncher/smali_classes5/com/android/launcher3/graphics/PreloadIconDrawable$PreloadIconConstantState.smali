.class public Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;
.super Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
.source "PreloadIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/PreloadIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PreloadIconConstantState"
.end annotation


# instance fields
.field protected final mIndicatorColor:I

.field protected final mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field protected final mIsDarkMode:Z

.field protected final mLevel:I

.field protected final mPreloadColors:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZ)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "iconColor"    # I
    .param p3, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p4, "indicatorColor"    # I
    .param p5, "preloadColors"    # [I
    .param p6, "isDarkMode"    # Z

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    .line 374
    iput-object p3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 375
    iput p4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIndicatorColor:I

    .line 376
    iput-object p5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mPreloadColors:[I

    .line 377
    iput-boolean p6, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIsDarkMode:Z

    .line 378
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mLevel:I

    .line 379
    return-void
.end method


# virtual methods
.method public createDrawable()Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 5

    .line 383
    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIndicatorColor:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mPreloadColors:[I

    iget-boolean v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->mIsDarkMode:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/graphics/PreloadIconDrawable;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I[IZ)V

    return-object v0
.end method

.method public bridge synthetic createDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable$PreloadIconConstantState;->createDrawable()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    return-object v0
.end method
