.class public Lcom/sonyericsson/music/common/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;
    }
.end annotation


# static fields
.field private static final BG_NORMALIZED_HSV:[F

.field public static final DISPLAY_ASPECT_RATIO_21_TO_9:F = 2.3333333f

.field public static final SYSTEM_UI_VISIBILITY_NAVIGATIONBAR:I = 0x2

.field public static final SYSTEM_UI_VISIBILITY_STATUSBAR:I = 0x1

.field private static sStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 72
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/music/common/UIUtils;->BG_NORMALIZED_HSV:[F

    const/4 v0, 0x0

    .line 74
    sput v0, Lcom/sonyericsson/music/common/UIUtils;->sStatusBarHeight:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorizeToolbarContent(Lcom/sonyericsson/music/ToolbarControl;I)V
    .locals 5

    .line 417
    invoke-virtual {p0}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object p0

    .line 418
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 421
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 422
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 424
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 425
    :cond_0
    invoke-static {v3}, Landroidx/core/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;

    move-result-object v4

    instance-of v4, v4, Lcom/sonyericsson/music/ui/TintedMediaRouteActionProvider;

    if-eqz v4, :cond_1

    .line 427
    invoke-static {v3}, Landroidx/core/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/ui/TintedMediaRouteActionProvider;

    .line 428
    invoke-virtual {v3, p1}, Lcom/sonyericsson/music/ui/TintedMediaRouteActionProvider;->setTint(I)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 433
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 435
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 437
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 439
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method

.method public static getColorFromAttr(Landroid/content/Context;I)I
    .locals 2

    .line 375
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    .line 377
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 378
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static getDisplayAspectRatio(Landroid/content/Context;)F
    .locals 2

    .line 485
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    .line 486
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 487
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 491
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p0, v0, :cond_0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float p0, p0

    div-float p0, v0, p0

    :goto_0
    return p0
.end method

.method public static getEstimatedGridItemWidth(Landroid/content/Context;I)I
    .locals 2

    const-string v0, "window"

    .line 294
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 295
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 296
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 297
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .line 217
    sget v0, Lcom/sonyericsson/music/common/UIUtils;->sStatusBarHeight:I

    return v0
.end method

.method private static getSystemUiWrapper(Landroid/view/View;ZZZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 0

    .line 178
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object p0

    if-eqz p1, :cond_0

    const/16 p1, 0x400

    .line 181
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x200

    .line 185
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    :cond_1
    return-object p0
.end method

.method public static getThemedLayoutInflater(Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;
    .locals 1

    .line 280
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string p0, "layout_inflater"

    .line 281
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static getTintedDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 362
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/UIUtils;->getTintedDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getTintedDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 368
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    .line 369
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-object p0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 3

    .line 194
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 196
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/sonyericsson/music/common/UIUtils;->sStatusBarHeight:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static isInteractive(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "power"

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public static isPhabletLayout(Landroid/app/Activity;)Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isPhoneLandscape(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 249
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isTabletLayout(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isRTL(Ljava/lang/String;)Z
    .locals 1

    .line 341
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSeascapeMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "window"

    .line 265
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_1

    .line 268
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 270
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isTabletLandscape(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 231
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isTabletLayout(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isTabletLayout(Landroid/app/Activity;)Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isTabletPortrait(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 240
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isTabletLayout(Landroid/app/Activity;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isTouchExplorationEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUseDarkTheme(Landroid/content/Context;)Z
    .locals 3

    .line 356
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_theme"

    const v2, 0x7f100268

    .line 357
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100267

    .line 358
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static normalizeTrackColor(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 346
    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->primary(Landroid/content/Context;)I

    move-result p1

    :cond_0
    const/4 p0, 0x3

    .line 348
    new-array p0, p0, [F

    .line 349
    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 350
    sget-object p1, Lcom/sonyericsson/music/common/UIUtils;->BG_NORMALIZED_HSV:[F

    const/4 v0, 0x1

    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x2

    .line 351
    aget p1, p1, v0

    aput p1, p0, v0

    .line 352
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static varargs playTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 473
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 474
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static setDefaultLightSystemUI(Landroid/app/Activity;)V
    .locals 1

    .line 382
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/UIUtils;->setLightSystemUI(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static setDefaultSystemUIVisibility(Landroid/app/Activity;)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibility(Landroid/view/View;IILandroid/app/Activity;)V

    return-void
.end method

.method public static setLightSystemUI(Landroid/app/Activity;Z)V
    .locals 2

    .line 386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 387
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x1a

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, -0x2001

    .line 397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    and-int/lit8 p1, p1, -0x11

    .line 402
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method public static setSystemUIBackgroundColor(Landroid/app/Activity;II)V
    .locals 3

    .line 407
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 410
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 411
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static setSystemUIVisibility(Landroid/view/View;IILandroid/app/Activity;)V
    .locals 5

    .line 88
    invoke-static {p3}, Lcom/sonyericsson/music/common/UIUtils;->init(Landroid/content/Context;)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 98
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_5

    .line 100
    invoke-static {p0, v0, p1, v1}, Lcom/sonyericsson/music/common/UIUtils;->getSystemUiWrapper(Landroid/view/View;ZZZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object p0

    .line 102
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p2, v4, :cond_4

    .line 103
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 105
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz v0, :cond_2

    const/high16 v0, 0x4000000

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const/high16 v2, 0x8000000

    :cond_3
    or-int p1, v0, v2

    or-int/2addr p1, v1

    .line 107
    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, -0x2

    .line 110
    invoke-virtual {p0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->supportsTranslucentBackgroundOpacity(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 113
    invoke-virtual {p0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 114
    invoke-virtual {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    goto :goto_5

    :cond_5
    const/16 v1, 0x15

    if-lt v3, v1, :cond_a

    if-eqz v0, :cond_6

    const/16 v1, 0x400

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_7

    const/16 v3, 0x200

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v1, v3

    .line 122
    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 124
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz v0, :cond_8

    .line 126
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 130
    invoke-virtual {p0, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 131
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_9

    .line 132
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 136
    :cond_9
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 137
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p3, -0x80000000

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public static setSystemUIVisibilityPreKK(Landroid/view/View;IZ)Z
    .locals 4

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_4

    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 157
    :goto_1
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/common/UIUtils;->getSystemUiWrapper(Landroid/view/View;ZZZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->supportsTranslucentBackground()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->supportsTranslucentBackgroundOpacity(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {p0, p2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackground(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 167
    invoke-virtual {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    :cond_4
    return v1
.end method

.method public static setSystemUIVisibilityPreKK(Landroid/view/View;Z)Z
    .locals 1

    const/4 v0, 0x3

    .line 143
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibilityPreKK(Landroid/view/View;IZ)Z

    move-result p0

    return p0
.end method

.method public static unbindDrawables(Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 311
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 314
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 318
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 323
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/music/common/UIUtils;->unbindDrawables(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_3
    instance-of p0, p0, Landroid/widget/AdapterView;

    if-nez p0, :cond_4

    .line 327
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    return-void
.end method

.method public static waitForMeasure(Landroid/view/View;Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;)V
    .locals 2

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gtz v0, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 455
    new-instance v1, Lcom/sonyericsson/music/common/UIUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/common/UIUtils$1;-><init>(Landroid/view/View;Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 452
    :cond_1
    :goto_0
    invoke-interface {p1, p0, v0, v1}, Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;->onMeasured(Landroid/view/View;II)V

    :goto_1
    return-void
.end method
