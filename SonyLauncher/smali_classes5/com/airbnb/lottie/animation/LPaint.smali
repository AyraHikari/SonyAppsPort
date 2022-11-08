.class public Lcom/airbnb/lottie/animation/LPaint;
.super Landroid/graphics/Paint;
.source "LPaint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 21
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "porterDuffMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 30
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/LPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "porterDuffMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 25
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/LPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    return-void
.end method


# virtual methods
.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 0
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 37
    return-void
.end method
