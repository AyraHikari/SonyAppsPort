.class public final Lcom/android/launcher3/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final ATLEAST_P:Z

.field public static final ATLEAST_Q:Z

.field public static final ATLEAST_R:Z

.field public static final ATLEAST_S:Z

.field public static final ATLEAST_T:Z

.field public static final EDGE_NAV_BAR:I = 0x100

.field public static final EMPTY_PERSON_ARRAY:[Landroid/app/Person;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final EXTRA_WALLPAPER_FLAVOR:Ljava/lang/String; = "com.android.launcher3.WALLPAPER_FLAVOR"

.field public static final EXTRA_WALLPAPER_LAUNCH_SOURCE:Ljava/lang/String; = "com.android.wallpaper.LAUNCH_SOURCE"

.field public static final EXTRA_WALLPAPER_OFFSET:Ljava/lang/String; = "com.android.launcher3.WALLPAPER_OFFSET"

.field public static final IDD_JOB_ID:I = 0x80

.field public static final IS_DEBUG_DEVICE:Z

.field public static IS_RUNNING_IN_TEST_HARNESS:Z = false

.field public static final IS_USER_DEVICE:Z

.field private static final RUSSIA_FEATURE:Ljava/lang/String; = "com.google.android.feature.RU"

.field public static final SHOW_QSB_KEY:Ljava/lang/String; = "pref_show_quick_search_box"

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final sInverseMatrix:Landroid/graphics/Matrix;

.field private static final sLoc0:[I

.field private static final sLoc1:[I

.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 119
    nop

    .line 120
    const-string v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 122
    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lcom/android/launcher3/Utilities;->sLoc0:[I

    .line 123
    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    .line 125
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    .line 127
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 128
    new-array v1, v0, [Landroid/app/Person;

    sput-object v1, Lcom/android/launcher3/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    .line 131
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    .line 154
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "eng"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    sput-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    .line 158
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Utilities;->IS_USER_DEVICE:Z

    .line 194
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    .line 193
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boundToRange(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .line 596
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static boundToRange(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .line 589
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static boundToRange(JJJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "lowerBound"    # J
    .param p4, "upperBound"    # J

    .line 603
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateTextHeight(F)I
    .locals 4
    .param p0, "textSizePx"    # F

    .line 514
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 515
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 516
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 517
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method public static comp(F)F
    .locals 1
    .param p0, "a"    # F

    .line 482
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;
    .locals 4
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "values"    # Lcom/android/launcher3/util/IntArray;

    .line 550
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s IN (%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createHomeIntent()Landroid/content/Intent;
    .locals 2

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 612
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 610
    return-object v0
.end method

.method public static dpToPx(F)I
    .locals 1
    .param p0, "dp"    # F

    .line 536
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static dpiFromPx(FI)F
    .locals 2
    .param p0, "size"    # F
    .param p1, "densityDpi"    # I

    .line 530
    int-to-float v0, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 531
    .local v0, "densityRatio":F
    div-float v1, p0, v0

    return v1
.end method

.method public static enableRunningInTestHarnessForTests()V
    .locals 1

    .line 197
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    .line 198
    return-void
.end method

.method public static existsStyleWallpapers(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 206
    invoke-static {p0}, Lcom/android/launcher3/util/PackageManagerHelper;->getStyleWallpapersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 207
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 794
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 795
    .local v0, "appState":Lcom/android/launcher3/LauncherAppState;
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    .line 796
    instance-of v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x200

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 798
    .local v1, "iconBadged":Z
    :goto_0
    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    instance-of v4, p2, Landroid/content/pm/ShortcutInfo;

    if-nez v4, :cond_3

    .line 801
    :cond_2
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v3

    .line 803
    :cond_3
    move-object v2, p2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 804
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 805
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/icons/IconCache;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    .line 804
    return-object v3

    .line 806
    .end local v1    # "iconBadged":Z
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 807
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 809
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 810
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    .line 811
    :cond_6
    sget v1, Lcom/android/launcher3/R$drawable;->ic_work_app_badge:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 809
    :goto_1
    return-object v1
.end method

.method public static getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V
    .locals 8
    .param p0, "dragLayer"    # Lcom/android/launcher3/views/BaseDragLayer;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewBounds"    # Landroid/graphics/Rect;
    .param p3, "ignoreTransform"    # Z
    .param p4, "recycle"    # [F
    .param p5, "outRect"    # Landroid/graphics/RectF;

    .line 277
    if-nez p4, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 278
    .local v0, "points":[F
    :goto_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 279
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 280
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 281
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 283
    invoke-static {p1, p0, v0, v2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 285
    aget v1, v0, v2

    aget v6, v0, v4

    .line 286
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aget v6, v0, v3

    aget v7, v0, v5

    .line 287
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aget v2, v0, v2

    aget v4, v0, v4

    .line 288
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, v0, v3

    aget v4, v0, v5

    .line 289
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 285
    invoke-virtual {p5, v1, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 290
    return-void
.end method

.method public static getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;)[I
    .locals 8
    .param p0, "v0"    # Landroid/view/View;
    .param p1, "v1"    # Landroid/view/View;

    .line 347
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 348
    sget-object v1, Lcom/android/launcher3/Utilities;->sLoc1:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 350
    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    .line 351
    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v0, v3

    .line 352
    aget v4, v1, v2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v1, v2

    .line 353
    aget v4, v1, v3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v1, v3

    .line 354
    const/4 v5, 0x2

    new-array v5, v5, [I

    aget v1, v1, v2

    aget v6, v0, v2

    sub-int/2addr v1, v6

    aput v1, v5, v2

    aget v0, v0, v3

    sub-int/2addr v4, v0

    aput v4, v5, v3

    return-object v5
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F
    .locals 1
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "ancestor"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "includeRootScroll"    # Z

    .line 225
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v0

    return v0
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F
    .locals 4
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "ancestor"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "includeRootScroll"    # Z
    .param p4, "ignoreTransform"    # Z

    .line 245
    const/high16 v0, 0x3f800000    # 1.0f

    .line 246
    .local v0, "scale":F
    move-object v1, p0

    .line 247
    .local v1, "v":Landroid/view/View;
    :goto_0
    if-eq v1, p1, :cond_4

    if-eqz v1, :cond_4

    .line 250
    if-ne v1, p0, :cond_0

    if-eqz p3, :cond_1

    .line 251
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    .line 254
    :cond_1
    if-nez p4, :cond_2

    .line 255
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 257
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    .line 258
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    .line 260
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 262
    :cond_4
    return v0
.end method

.method public static getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.launcher3.device.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "shouldThemeIcon"    # Z
    .param p5, "outObj"    # [Ljava/lang/Object;

    .line 728
    invoke-static {p0, p1, p2, p3, p5}, Lcom/android/launcher3/Utilities;->loadFullDrawableWithoutTheme(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;II[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 729
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 731
    .local v1, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 732
    .local v2, "mono":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-static {p0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v3

    .line 734
    .local v3, "colors":[I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 735
    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 736
    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v4

    .line 739
    .end local v1    # "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v2    # "mono":Landroid/graphics/drawable/Drawable;
    .end local v3    # "colors":[I
    :cond_0
    return-object v0
.end method

.method public static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.launcher3.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getProgress(FFF)F
    .locals 2
    .param p0, "current"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 464
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getQsbDefaultValue(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 954
    nop

    .line 955
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$bool;->google_search_widget_visible:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 956
    .local v0, "cdfFlag":Z
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRussiaVariant(Landroid/content/Context;)Z

    move-result v1

    .line 957
    .local v1, "russiaFeature":Z
    sget-boolean v2, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v2, :cond_0

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "google_search_widget_visible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Utilities"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.google.android.feature.RU:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static getQsbEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 965
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 966
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getQsbDefaultValue(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "pref_show_quick_search_box"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 6
    .param p0, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/DeviceProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ">;"
        }
    .end annotation

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;>;"
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_0

    .line 927
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v4, Lcom/android/launcher3/R$drawable;->ic_split_left:I

    sget v5, Lcom/android/launcher3/R$string;->split_screen_position_left:I

    invoke-direct {v1, v4, v5, v3, v3}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v4, Lcom/android/launcher3/R$drawable;->ic_split_right:I

    sget v5, Lcom/android/launcher3/R$string;->split_screen_position_right:I

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 934
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 936
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v4, Lcom/android/launcher3/R$drawable;->ic_split_right:I

    sget v5, Lcom/android/launcher3/R$string;->split_screen_position_right:I

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 939
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_2

    .line 940
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v2, Lcom/android/launcher3/R$drawable;->ic_split_left:I

    sget v4, Lcom/android/launcher3/R$string;->split_screen_position_left:I

    invoke-direct {v1, v2, v4, v3, v3}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    :cond_2
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v2, Lcom/android/launcher3/R$drawable;->ic_split_top:I

    sget v4, Lcom/android/launcher3/R$string;->split_screen_position_top:I

    invoke-direct {v1, v2, v4, v3, v3}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    :goto_0
    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 559
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 560
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 561
    .local v1, "getter":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 562
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 563
    return-object v2

    .line 567
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "getter":Ljava/lang/reflect/Method;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Launcher.Utilities"

    const-string v2, "Unable to read system properties"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p1
.end method

.method public static getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .line 913
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 914
    .local v0, "pos":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 915
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static insetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 402
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 403
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 404
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 405
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 406
    return-void
.end method

.method public static isBinderSizeError(Ljava/lang/Exception;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 663
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-nez v0, :cond_1

    .line 664
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 663
    :goto_1
    return v0
.end method

.method public static isBootCompleted()Z
    .locals 2

    .line 554
    const-string v0, "sys.boot_completed"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isComponentEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "clsName"    # Ljava/lang/String;

    .line 674
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 677
    .local v1, "componentEnabledSetting":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 686
    const/16 v3, 0x208

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    goto :goto_0

    .line 679
    :pswitch_0
    return v2

    .line 681
    :pswitch_1
    const/4 v2, 0x1

    return v2

    .line 689
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_0

    .line 690
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/Utilities$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/launcher3/Utilities$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 695
    :cond_0
    return v2

    .line 696
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 698
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 166
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 167
    .local v1, "nightMode":I
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isDevelopersOptionsEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isDevelopersOptionsUSBEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isGridOptionsEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    .line 670
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->isComponentEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRelativePercentDifferenceGreaterThan(FFF)Z
    .locals 3
    .param p0, "first"    # F
    .param p1, "second"    # F
    .param p2, "bound"    # F

    .line 851
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float v1, p0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 521
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRussiaVariant(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 970
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.feature.RU"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 819
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 820
    .local v0, "extra":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isWallpaperAllowed(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 659
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v0

    return v0
.end method

.method public static isWallpaperSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 655
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isComponentEnabled$0(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Z
    .locals 1
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;

    .line 691
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ProviderInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static loadFullDrawableWithoutTheme(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;II[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outObj"    # [Ljava/lang/Object;

    .line 744
    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 745
    .local v0, "activity":Lcom/android/launcher3/views/ActivityContext;
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 746
    .local v1, "appState":Lcom/android/launcher3/LauncherAppState;
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 747
    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    .line 748
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    .line 749
    .local v2, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    aput-object v2, p4, v4

    .line 750
    if-nez v2, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    nop

    .line 750
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    .line 751
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconProvider()Lcom/android/launcher3/icons/IconProvider;

    move-result-object v3

    .line 752
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 751
    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 750
    :goto_0
    return-object v3

    .line 753
    .end local v2    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    :cond_1
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_4

    .line 754
    instance-of v2, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v2, :cond_2

    .line 755
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 757
    .local v2, "activityInfo":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    aput-object v2, p4, v4

    .line 758
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 760
    .end local v2    # "activityInfo":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v2

    .line 761
    invoke-virtual {v2, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->buildRequest(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v2

    const/16 v5, 0xb

    .line 762
    invoke-virtual {v2, v5}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v2

    .line 763
    .local v2, "si":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 764
    return-object v3

    .line 766
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p4, v4

    .line 767
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 768
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 767
    invoke-static {p0, v3, v4}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 770
    .end local v2    # "si":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_4
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    .line 771
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v2, v5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->createFolderAdaptiveIcon(Lcom/android/launcher3/views/ActivityContext;ILandroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    move-result-object v2

    .line 773
    .local v2, "icon":Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    if-nez v2, :cond_5

    .line 774
    return-object v3

    .line 776
    :cond_5
    aput-object v2, p4, v4

    .line 777
    return-object v2

    .line 778
    .end local v2    # "icon":Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    :cond_6
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_7

    instance-of v2, p1, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    if-eqz v2, :cond_7

    .line 780
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/SearchActionItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    return-object v2

    .line 782
    :cond_7
    return-object v3
.end method

.method public static makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;
    .locals 3
    .param p0, "color"    # I
    .param p1, "tintAmount"    # F

    .line 893
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 894
    const/4 v0, 0x0

    return-object v0

    .line 896
    :cond_0
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    .line 898
    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 899
    invoke-static {v2, p0, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 896
    return-object v0
.end method

.method public static mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F
    .param p3, "toMin"    # F
    .param p4, "toMax"    # F
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 459
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    return v0
.end method

.method public static mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V
    .locals 4
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [F

    .line 306
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 307
    move-object v0, p0

    .line 308
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eq v0, p1, :cond_0

    .line 309
    sget-object v1, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 314
    :cond_0
    sget-object v1, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 315
    sget-object v2, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 316
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 317
    return-void
.end method

.method public static mapRange(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 468
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static mapRectInSelfToDescendant(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 297
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 298
    .local v0, "coords":[F
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 299
    aget v1, v0, v2

    float-to-int v1, v1

    aget v2, v0, v3

    float-to-int v2, v2

    aget v3, v0, v4

    float-to-int v3, v3

    aget v4, v0, v5

    float-to-int v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    return-void
.end method

.method public static mapToRange(FFFFFLandroid/view/animation/Interpolator;)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "fromMin"    # F
    .param p2, "fromMax"    # F
    .param p3, "toMin"    # F
    .param p4, "toMax"    # F
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 448
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v0

    .line 453
    .local v0, "progress":F
    invoke-interface {p5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v1, p3, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    return v1

    .line 449
    .end local v0    # "progress":F
    :cond_1
    :goto_0
    const-string v0, "Launcher.Utilities"

    const-string v1, "mapToRange: range has 0 length"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return p3
.end method

.method public static newContentObserver(Landroid/os/Handler;Ljava/util/function/Consumer;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/database/ContentObserver;"
        }
    .end annotation

    .line 836
    .local p1, "command":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/launcher3/Utilities$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Utilities$1;-><init>(Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static offsetPoints([FFF)V
    .locals 3
    .param p0, "points"    # [F
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 330
    aget v1, p0, v0

    add-float/2addr v1, p1

    aput v1, p0, v0

    .line 331
    add-int/lit8 v1, v0, 0x1

    aget v2, p0, v1

    add-float/2addr v2, p2

    aput v2, p0, v1

    .line 329
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static or(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 490
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->saturate(F)F

    move-result v0

    .line 491
    .local v0, "satA":F
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->saturate(F)F

    move-result v1

    .line 492
    .local v1, "satB":F
    add-float v2, v0, v1

    mul-float v3, v0, v1

    sub-float/2addr v2, v3

    return v2
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 342
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0
.end method

.method public static postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 707
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 708
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 709
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 710
    return-void
.end method

.method public static prefixTextWithIcon(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconRes"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .line 636
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 637
    .local v0, "spanned":Landroid/text/SpannableString;
    new-instance v1, Lcom/android/launcher3/graphics/TintedDrawableSpan;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/TintedDrawableSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 639
    return-object v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 541
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    return v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;F)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "scale"    # F

    .line 545
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pxToSp(F)F
    .locals 1
    .param p0, "size"    # F

    .line 526
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p0, v0

    return v0
.end method

.method public static rotateBounds(Landroid/graphics/Rect;III)V
    .locals 3
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "delta"    # I

    .line 861
    rem-int/lit8 v0, p3, 0x4

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 862
    .local v0, "rdelta":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 863
    .local v1, "origLeft":I
    packed-switch v0, :pswitch_data_0

    .line 883
    return-void

    .line 877
    :pswitch_0
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 878
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 879
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 880
    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 881
    return-void

    .line 873
    :pswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 874
    sub-int v2, p1, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 875
    return-void

    .line 867
    :pswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 868
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 869
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 870
    sub-int v2, p1, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 871
    return-void

    .line 865
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static roundArray([F[I)V
    .locals 2
    .param p0, "in"    # [F
    .param p1, "out"    # [I

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 324
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static saturate(F)F
    .locals 2
    .param p0, "a"    # F

    .line 475
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    return v0
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 393
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 395
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 396
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 397
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 399
    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 383
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 385
    .local v0, "cx":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 386
    .local v1, "cy":I
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 387
    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 388
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 390
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_0
    return-void
.end method

.method public static scaleRectFAboutCenter(Landroid/graphics/RectF;F)V
    .locals 2
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F

    .line 368
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutPivot(Landroid/graphics/RectF;FFF)V

    .line 369
    return-void
.end method

.method public static scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 427
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 428
    .local v0, "px":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 429
    .local v1, "py":F
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 430
    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 431
    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 432
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 433
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 434
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 435
    return-void
.end method

.method public static scaleRectFAboutPivot(Landroid/graphics/RectF;FFF)V
    .locals 2
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 372
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 373
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 374
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 375
    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 376
    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 377
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 378
    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 380
    :cond_0
    return-void
.end method

.method public static setRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectFSrc"    # Landroid/graphics/RectF;
    .param p1, "rectOut"    # Landroid/graphics/Rect;

    .line 361
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 362
    iget v0, p0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 363
    iget v0, p0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 364
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 365
    return-void
.end method

.method public static setRectToViewCenter(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 4
    .param p0, "iconView"    # Landroid/view/View;
    .param p1, "iconSize"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 577
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 578
    .local v1, "left":I
    add-int v2, v1, p1

    .line 579
    .local v2, "right":I
    add-int v3, v0, p1

    .line 580
    .local v3, "bottom":I
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 581
    return-void
.end method

.method public static setStartMarginForView(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "margin"    # I

    .line 907
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 908
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 909
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    return-void
.end method

.method public static shrinkRect(Landroid/graphics/Rect;FF)F
    .locals 5
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 409
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 410
    .local v0, "scale":F
    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p1, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 412
    .local v1, "deltaX":I
    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 413
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroid/graphics/Rect;->right:I

    .line 415
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, p2, v0

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 416
    .local v2, "deltaY":I
    iget v3, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/graphics/Rect;->top:I

    .line 417
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 419
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    :cond_0
    return v0
.end method

.method public static squaredHypot(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 824
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static squaredTouchSlop(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 828
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 829
    .local v0, "slop":F
    mul-float v1, v0, v0

    return v1
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 501
    if-nez p0, :cond_0

    .line 502
    const-string v0, ""

    return-object v0

    .line 506
    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 507
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 714
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 716
    :goto_1
    return-void
.end method

.method public static wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "ttsMsg"    # Ljava/lang/String;

    .line 622
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 623
    .local v0, "spanned":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 624
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 623
    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 625
    return-object v0
.end method
