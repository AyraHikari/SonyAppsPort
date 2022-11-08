.class public Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FastBitmapConstantState"
.end annotation


# instance fields
.field private mBadgeConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

.field protected final mBitmap:Landroid/graphics/Bitmap;

.field protected final mIconColor:I

.field protected mIsDisabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmBadgeConstantState(Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBadgeConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .line 378
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBitmap:Landroid/graphics/Bitmap;

    .line 380
    iput p2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIconColor:I

    .line 381
    return-void
.end method


# virtual methods
.method protected createDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 3

    .line 384
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIconColor:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public final newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 2

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->createDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .line 390
    .local v0, "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIsDisabled:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBadgeConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_0
    return-object v0
.end method
