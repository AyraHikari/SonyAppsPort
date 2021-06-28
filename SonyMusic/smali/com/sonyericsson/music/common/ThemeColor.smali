.class public Lcom/sonyericsson/music/common/ThemeColor;
.super Ljava/lang/Object;
.source "ThemeColor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accent(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f04008c

    .line 30
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static controlNormal(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f040091

    .line 50
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static getThemeColor(Landroid/content/Context;I)I
    .locals 3

    .line 130
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 131
    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 133
    :try_start_0
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    throw p1
.end method

.method public static icons(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f060076

    const v1, 0x7f06003f

    .line 75
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/ThemeColor;->themeSwitch(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static landingpageArtistViewTopColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f060074

    const v1, 0x7f06003d

    .line 107
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/ThemeColor;->themeSwitch(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static movingItemBackground(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f060088

    const v1, 0x7f060051

    .line 99
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/ThemeColor;->themeSwitch(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static primary(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f040093

    .line 35
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static primaryDark(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f040094

    .line 40
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static primaryLight(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f040095

    .line 45
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static primaryText(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010036

    .line 55
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static primaryTextDisabled(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010037

    .line 60
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static secondaryText(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010038

    .line 65
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ThemeColor;->getThemeColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static statusBar(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f06008d

    const v1, 0x7f060056

    .line 91
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/ThemeColor;->themeSwitch(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static themeSwitch(Landroid/content/Context;II)I
    .locals 1

    .line 119
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, p2

    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static window(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f060075

    const v1, 0x7f06003e

    .line 83
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/ThemeColor;->themeSwitch(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method
