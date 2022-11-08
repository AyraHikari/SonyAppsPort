.class public Lcom/android/launcher3/icons/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BitmapInfo$Extender;,
        Lcom/android/launcher3/icons/BitmapInfo$DrawableCreationFlags;,
        Lcom/android/launcher3/icons/BitmapInfo$BitmapInfoFlags;
    }
.end annotation


# static fields
.field static final FLAG_INSTANT:I = 0x2

.field public static final FLAG_NO_BADGE:I = 0x2

.field public static final FLAG_THEMED:I = 0x1

.field static final FLAG_WORK:I = 0x1

.field public static final LOW_RES_ICON:Landroid/graphics/Bitmap;

.field public static final LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

.field public static final TAG:Ljava/lang/String; = "BitmapInfo"


# instance fields
.field private badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field public final color:I

.field public flags:I

.field public final icon:Landroid/graphics/Bitmap;

.field protected mMono:Landroid/graphics/Bitmap;

.field protected mWhiteShadowLayer:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    .line 48
    invoke-static {v0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 64
    iput p2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 65
    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .line 167
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method


# virtual methods
.method protected applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Lcom/android/launcher3/icons/FastBitmapDrawable;
    .param p3, "creationFlags"    # I

    .line 150
    sget v0, Lcom/android/launcher3/icons/R$attr;->disabledIconAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getFloat(Landroid/content/Context;IF)F

    move-result v0

    iput v0, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    .line 151
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 154
    :cond_0
    iget v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 155
    sget v0, Lcom/android/launcher3/icons/R$drawable;->ic_instant_app_badge:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 156
    :cond_1
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 157
    sget v0, Lcom/android/launcher3/icons/R$drawable;->ic_work_app_badge:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_2
    :goto_0
    return-void
.end method

.method public canPersist()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clone()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3

    .line 95
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BitmapInfo;->copyInternalsTo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method protected copyInternalsTo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/icons/BitmapInfo;

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    .line 88
    iget v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iput v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    .line 90
    return-object p1
.end method

.method public getMono()Landroid/graphics/Bitmap;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final isLowRes()Z
    .locals 2

    .line 111
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNullOrLowRes()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationFlags"    # I

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)V

    .local v0, "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    goto :goto_0

    .line 139
    .end local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 140
    invoke-static {p0, p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->newDrawable(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .restart local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    goto :goto_0

    .line 142
    .end local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :cond_1
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    .line 144
    .restart local v0    # "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BitmapInfo;->applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V

    .line 145
    return-object v0
.end method

.method public setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V
    .locals 1
    .param p1, "mono"    # Landroid/graphics/Bitmap;
    .param p2, "iconFactory"    # Lcom/android/launcher3/icons/BaseIconFactory;

    .line 99
    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    .line 101
    return-void
.end method

.method public withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "badgeInfo"    # Lcom/android/launcher3/icons/BitmapInfo;

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 69
    .local v0, "result":Lcom/android/launcher3/icons/BitmapInfo;
    iput-object p1, v0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    .line 70
    return-object v0
.end method

.method public withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2
    .param p1, "op"    # Lcom/android/launcher3/util/FlagOp;

    .line 77
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-ne p1, v0, :cond_0

    .line 78
    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/android/launcher3/icons/BitmapInfo;
    iget v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    invoke-interface {p1, v1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 82
    return-object v0
.end method
