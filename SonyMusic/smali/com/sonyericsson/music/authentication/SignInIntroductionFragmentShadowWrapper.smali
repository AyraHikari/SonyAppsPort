.class public Lcom/sonyericsson/music/authentication/SignInIntroductionFragmentShadowWrapper;
.super Lcom/sonyericsson/music/ui/ShadowLayout;
.source "SignInIntroductionFragmentShadowWrapper.java"


# static fields
.field static final SHADOW_BASE_COLOR:I = 0x26000000


# instance fields
.field private mHeight:I


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

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/music/authentication/SignInIntroductionFragmentShadowWrapper;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGradientDirection()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setShadowHeight(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/sonyericsson/music/authentication/SignInIntroductionFragmentShadowWrapper;->mHeight:I

    return-void
.end method
