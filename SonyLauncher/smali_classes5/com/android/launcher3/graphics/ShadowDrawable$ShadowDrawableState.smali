.class Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ShadowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowDrawableState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mDarkTintColor:I

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I

.field mIsDark:Z

.field mLastDrawnBitmap:Landroid/graphics/Bitmap;

.field mShadowColor:I

.field mShadowSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;-><init>()V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 200
    new-instance v0, Lcom/android/launcher3/graphics/ShadowDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/graphics/ShadowDrawable;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;Lcom/android/launcher3/graphics/ShadowDrawable-IA;)V

    return-object v0
.end method
