.class public Lcom/sonyericsson/music/library/SystemUIConfig;
.super Ljava/lang/Object;
.source "SystemUIConfig.java"


# instance fields
.field public navigationBarColor:I

.field public useLightUI:Z

.field public visibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySystemUiConfig(Landroid/app/Activity;Lcom/sonyericsson/music/library/SystemUIConfig;)V
    .locals 3

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p1, Lcom/sonyericsson/music/library/SystemUIConfig;->visibility:I

    iget v2, p1, Lcom/sonyericsson/music/library/SystemUIConfig;->navigationBarColor:I

    .line 56
    invoke-static {v0, v1, v2, p0}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibility(Landroid/view/View;IILandroid/app/Activity;)V

    .line 63
    iget-boolean p1, p1, Lcom/sonyericsson/music/library/SystemUIConfig;->useLightUI:Z

    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/UIUtils;->setLightSystemUI(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 4

    .line 29
    new-instance v0, Lcom/sonyericsson/music/library/SystemUIConfig;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/sonyericsson/music/library/SystemUIConfig;->useLightUI:Z

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    .line 33
    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->primaryDark(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Lcom/sonyericsson/music/library/SystemUIConfig;->navigationBarColor:I

    goto :goto_1

    .line 35
    :cond_1
    iput v2, v0, Lcom/sonyericsson/music/library/SystemUIConfig;->navigationBarColor:I

    :goto_1
    const/4 p0, 0x3

    .line 37
    iput p0, v0, Lcom/sonyericsson/music/library/SystemUIConfig;->visibility:I

    return-object v0
.end method

.method public static noActionBar(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/sonyericsson/music/library/SystemUIConfig;->getDefault(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object p0

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/sonyericsson/music/library/SystemUIConfig;->visibility:I

    return-object p0
.end method

.method public static transparent(Z)Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 3

    .line 42
    new-instance v0, Lcom/sonyericsson/music/library/SystemUIConfig;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 43
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lcom/sonyericsson/music/library/SystemUIConfig;->useLightUI:Z

    .line 44
    iput v1, v0, Lcom/sonyericsson/music/library/SystemUIConfig;->navigationBarColor:I

    const/4 p0, 0x3

    .line 45
    iput p0, v0, Lcom/sonyericsson/music/library/SystemUIConfig;->visibility:I

    return-object v0
.end method
