.class public Lcom/sonyericsson/music/ui/MiniplayerWrap;
.super Lcom/sonyericsson/music/ui/ShadowLayout;
.source "MiniplayerWrap.java"


# static fields
.field static final SHADOW_BASE_COLOR:I = 0x26000000


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getBaseColorForGradient()I
    .locals 1

    const/high16 v0, 0x26000000

    return v0
.end method

.method public getBoundsForShadow()Landroid/graphics/Rect;
    .locals 4

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004d

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    new-instance v1, Landroid/graphics/Rect;

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getGradientDirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
