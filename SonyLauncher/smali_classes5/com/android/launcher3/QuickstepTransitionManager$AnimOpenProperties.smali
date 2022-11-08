.class Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;
.super Ljava/lang/Object;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimOpenProperties"
.end annotation


# instance fields
.field public final cropCenterXEnd:I

.field public final cropCenterXStart:I

.field public final cropCenterYEnd:I

.field public final cropCenterYStart:I

.field public final cropHeightEnd:I

.field public final cropHeightStart:I

.field public final cropWidthEnd:I

.field public final cropWidthStart:I

.field public final dX:F

.field public final dY:F

.field public final finalAppIconScale:F

.field public final iconAlphaStart:F

.field public final initialAppIconScale:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V
    .locals 11
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "windowTargetBounds"    # Landroid/graphics/Rect;
    .param p4, "launcherIconBounds"    # Landroid/graphics/RectF;
    .param p5, "view"    # Landroid/view/View;
    .param p6, "dragLayerLeft"    # I
    .param p7, "dragLayerTop"    # I
    .param p8, "hasSplashScreen"    # Z
    .param p9, "hasDifferentAppIcon"    # Z

    .line 1800
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1803
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    .line 1804
    .local v2, "smallestSize":F
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v2, v3

    .line 1805
    .local v3, "maxScaleX":F
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v4, v2, v4

    .line 1806
    .local v4, "maxScaleY":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1807
    .local v5, "iconStartScale":F
    instance-of v6, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v6, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v6, :cond_0

    .line 1808
    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v6}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v6

    .line 1809
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    instance-of v7, v6, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v7, :cond_0

    .line 1810
    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v7}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v5

    .line 1814
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    iput v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->initialAppIconScale:F

    .line 1815
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->finalAppIconScale:F

    .line 1818
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int v6, v6, p6

    int-to-float v6, v6

    .line 1819
    .local v6, "centerX":F
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int v7, v7, p7

    int-to-float v7, v7

    .line 1821
    .local v7, "centerY":F
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v8, v6, v8

    iput v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dX:F

    .line 1822
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v7, v8

    iput v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dY:F

    .line 1824
    if-eqz p8, :cond_1

    if-nez p9, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_0
    iput v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->iconAlphaStart:F

    .line 1826
    const/16 v8, 0x6c

    const-string v9, "starting_surface_icon_size"

    move-object v10, p1

    invoke-static {v9, p1, v8}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v8

    .line 1829
    .local v8, "windowIconSize":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    .line 1830
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    .line 1832
    iput v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    .line 1833
    iput v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    .line 1835
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthEnd:I

    .line 1836
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightEnd:I

    .line 1838
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXEnd:I

    .line 1839
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYEnd:I

    .line 1840
    return-void
.end method
