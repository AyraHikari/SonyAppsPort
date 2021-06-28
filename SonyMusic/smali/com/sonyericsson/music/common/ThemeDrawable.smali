.class public Lcom/sonyericsson/music/common/ThemeDrawable;
.super Ljava/lang/Object;
.source "ThemeDrawable.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static themeSwitch(Landroid/content/Context;II)I
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method
