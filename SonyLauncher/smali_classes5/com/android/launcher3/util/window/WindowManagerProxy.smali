.class public Lcom/android/launcher3/util/window/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/window/WindowManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_TABLET_WIDTH:I = 0x258


# instance fields
.field protected final mTaskbarDrawnInProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-class v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    sget v1, Lcom/android/launcher3/R$string;->window_manager_proxy_class:I

    .line 67
    invoke-static {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->forOverride(Ljava/lang/Class;I)Lcom/android/launcher3/util/MainThreadInitializedObject;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>(Z)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "taskbarDrawnInProcess"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean p1, p0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    .line 85
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/window/WindowManagerProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    const-class v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    sget v1, Lcom/android/launcher3/R$string;->window_manager_proxy_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplays(Landroid/content/Context;)[Landroid/view/Display;

    move-result-object v0

    .line 94
    .local v0, "displays":[Landroid/view/Display;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 95
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/Pair<Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;>;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 96
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {p0, v4}, Lcom/android/launcher3/util/window/WindowManagerProxy;->isInternalDisplay(Landroid/view/Display;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v5, :cond_0

    .line 98
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v5

    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v5

    :goto_1
    nop

    .line 100
    .local v5, "displayContext":Landroid/content/Context;
    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/content/Context;Landroid/view/Display;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->normalize()Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v6

    .line 101
    .local v6, "info":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateWindowBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)[Lcom/android/launcher3/util/WindowBounds;

    move-result-object v7

    .line 102
    .local v7, "bounds":[Lcom/android/launcher3/util/WindowBounds;
    iget-object v8, v6, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "displayContext":Landroid/content/Context;
    .end local v6    # "info":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .end local v7    # "bounds":[Lcom/android/launcher3/util/WindowBounds;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_2
    return-object v1
.end method

.method public estimateWindowBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)[Lcom/android/launcher3/util/WindowBounds;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 216
    .local v2, "densityDpi":I
    iget v3, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    .line 217
    .local v3, "rotation":I
    iget-object v4, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    .line 219
    .local v4, "safeCutout":Landroid/graphics/Rect;
    iget-object v5, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 220
    .local v5, "minSize":I
    int-to-float v6, v5

    invoke-static {v6, v2}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v6

    float-to-int v6, v6

    .line 224
    .local v6, "swDp":I
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 225
    .local v7, "conf":Landroid/content/res/Configuration;
    iput v6, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 226
    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 229
    .local v7, "systemRes":Landroid/content/res/Resources;
    const/4 v9, 0x1

    const/16 v11, 0x258

    if-lt v6, v11, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 230
    .local v11, "isTablet":Z
    :goto_0
    if-nez v11, :cond_2

    sget-boolean v12, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v12, :cond_1

    .line 231
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->isGestureNav(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 233
    .local v9, "isTabletOrGesture":Z
    :goto_2
    const-string v12, "status_bar_height_portrait"

    const-string v13, "status_bar_height"

    invoke-virtual {v0, v7, v12, v13}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 235
    .local v12, "statusBarHeightPortrait":I
    const-string v14, "status_bar_height_landscape"

    invoke-virtual {v0, v7, v14, v13}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 240
    .local v13, "statusBarHeightLandscape":I
    if-eqz v11, :cond_4

    .line 241
    iget-boolean v14, v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-eqz v14, :cond_3

    .line 242
    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    sget v14, Lcom/android/launcher3/R$dimen;->taskbar_size:I

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    goto :goto_3

    .line 243
    :cond_4
    const-string v14, "navigation_bar_height"

    invoke-virtual {v0, v7, v14}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v14

    :goto_3
    nop

    .line 245
    .local v14, "navBarHeightPortrait":I
    if-eqz v11, :cond_6

    .line 246
    iget-boolean v15, v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-eqz v15, :cond_5

    .line 247
    const/4 v15, 0x0

    goto :goto_4

    :cond_5
    sget v15, Lcom/android/launcher3/R$dimen;->taskbar_size:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_4

    .line 248
    :cond_6
    if-eqz v9, :cond_7

    .line 249
    const-string v15, "navigation_bar_height_landscape"

    invoke-virtual {v0, v7, v15}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    nop

    .line 250
    .local v15, "navBarHeightLandscape":I
    if-eqz v9, :cond_8

    .line 251
    const/4 v10, 0x0

    goto :goto_5

    .line 252
    :cond_8
    const-string v10, "navigation_bar_width"

    invoke-virtual {v0, v7, v10}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v10

    :goto_5
    nop

    .line 254
    .local v10, "navbarWidthLandscape":I
    const/4 v0, 0x4

    move/from16 v17, v2

    .end local v2    # "densityDpi":I
    .local v17, "densityDpi":I
    new-array v2, v0, [Lcom/android/launcher3/util/WindowBounds;

    .line 255
    .local v2, "result":[Lcom/android/launcher3/util/WindowBounds;
    new-instance v18, Landroid/graphics/Point;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v19, v18

    .line 256
    .local v19, "tempSize":Landroid/graphics/Point;
    const/16 v18, 0x0

    move/from16 v20, v5

    move/from16 v5, v18

    .local v5, "i":I
    .local v20, "minSize":I
    :goto_6
    if-ge v5, v0, :cond_c

    .line 257
    invoke-static {v3, v5}, Lcom/android/launcher3/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    .line 258
    .local v0, "rotationChange":I
    move/from16 v21, v3

    .end local v3    # "rotation":I
    .local v21, "rotation":I
    iget-object v3, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move/from16 v22, v6

    .end local v6    # "swDp":I
    .local v22, "swDp":I
    iget-object v6, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v1, v19

    .end local v19    # "tempSize":Landroid/graphics/Point;
    .local v1, "tempSize":Landroid/graphics/Point;
    invoke-virtual {v1, v3, v6}, Landroid/graphics/Point;->set(II)V

    .line 259
    invoke-static {v1, v0}, Lcom/android/launcher3/util/RotationUtils;->rotateSize(Landroid/graphics/Point;I)V

    .line 260
    new-instance v3, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v19, v7

    .end local v7    # "systemRes":Landroid/content/res/Resources;
    .local v19, "systemRes":Landroid/content/res/Resources;
    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_9

    .line 264
    move v6, v14

    .line 265
    .local v6, "navBarHeight":I
    const/4 v7, 0x0

    .line 266
    .local v7, "navbarWidth":I
    move/from16 v16, v12

    move/from16 v8, v16

    .local v16, "statusBarHeight":I
    goto :goto_7

    .line 268
    .end local v6    # "navBarHeight":I
    .end local v7    # "navbarWidth":I
    .end local v16    # "statusBarHeight":I
    :cond_9
    move v6, v15

    .line 269
    .restart local v6    # "navBarHeight":I
    move v7, v10

    .line 270
    .restart local v7    # "navbarWidth":I
    move/from16 v16, v13

    move/from16 v8, v16

    .line 273
    .local v8, "statusBarHeight":I
    :goto_7
    move-object/from16 v23, v1

    .end local v1    # "tempSize":Landroid/graphics/Point;
    .local v23, "tempSize":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 274
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-static {v1, v0}, Lcom/android/launcher3/util/RotationUtils;->rotateRect(Landroid/graphics/Rect;I)V

    .line 275
    move/from16 v24, v0

    .end local v0    # "rotationChange":I
    .local v24, "rotationChange":I
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 276
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 278
    const/4 v0, 0x3

    if-eq v5, v0, :cond_b

    const/4 v0, 0x2

    if-ne v5, v0, :cond_a

    goto :goto_8

    .line 283
    :cond_a
    iget v0, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_9

    .line 281
    :cond_b
    :goto_8
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 285
    :goto_9
    new-instance v0, Lcom/android/launcher3/util/WindowBounds;

    invoke-direct {v0, v3, v1, v5}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    aput-object v0, v2, v5

    .line 256
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "navBarHeight":I
    .end local v7    # "navbarWidth":I
    .end local v8    # "statusBarHeight":I
    .end local v24    # "rotationChange":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v7, v19

    move/from16 v3, v21

    move/from16 v6, v22

    move-object/from16 v19, v23

    const/4 v0, 0x4

    goto/16 :goto_6

    .line 287
    .end local v5    # "i":I
    .end local v21    # "rotation":I
    .end local v22    # "swDp":I
    .end local v23    # "tempSize":Landroid/graphics/Point;
    .local v3, "rotation":I
    .local v6, "swDp":I
    .local v7, "systemRes":Landroid/content/res/Resources;
    .local v19, "tempSize":Landroid/graphics/Point;
    :cond_c
    return-object v2
.end method

.method protected getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resName"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method protected getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/String;

    .line 301
    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v1

    .line 302
    .local v1, "dimen":I
    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getDisplayId(Landroid/view/Display;)Ljava/lang/String;
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .line 338
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo(Landroid/content/Context;Landroid/view/Display;)Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .locals 9
    .param p1, "displayContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 316
    .local v0, "rotation":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 317
    .local v1, "cutoutRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 318
    .local v2, "size":Landroid/graphics/Point;
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_1

    .line 319
    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 320
    invoke-interface {v3}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    .line 321
    .local v3, "wm":Landroid/view/WindowMetrics;
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    .line 322
    .local v4, "cutout":Landroid/view/DisplayCutout;
    if-eqz v4, :cond_0

    .line 323
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v6

    .line 324
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v8

    .line 323
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    :cond_0
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 328
    .end local v3    # "wm":Landroid/view/WindowMetrics;
    .end local v4    # "cutout":Landroid/view/DisplayCutout;
    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 331
    :goto_0
    new-instance v3, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayId(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Ljava/lang/String;Landroid/graphics/Point;ILandroid/graphics/Rect;)V

    return-object v3
.end method

.method protected getDisplays(Landroid/content/Context;)[Landroid/view/Display;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 363
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getRealBounds(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Lcom/android/launcher3/util/WindowBounds;
    .locals 19
    .param p1, "windowContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "info"    # Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-nez v2, :cond_1

    .line 115
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 116
    .local v2, "smallestSize":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 117
    .local v3, "largestSize":Landroid/graphics/Point;
    move-object/from16 v4, p2

    invoke-virtual {v4, v2, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 119
    iget-object v5, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-le v5, v6, :cond_0

    .line 121
    new-instance v5, Lcom/android/launcher3/util/WindowBounds;

    iget-object v6, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v8, v6, Landroid/graphics/Point;->x:I

    iget-object v6, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v3, Landroid/graphics/Point;->y:I

    iget v12, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/util/WindowBounds;-><init>(IIIII)V

    return-object v5

    .line 125
    :cond_0
    new-instance v13, Lcom/android/launcher3/util/WindowBounds;

    iget-object v5, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v14, v5, Landroid/graphics/Point;->x:I

    iget-object v5, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v15, v5, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    iget v7, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/util/WindowBounds;-><init>(IIIII)V

    goto :goto_0

    .line 114
    .end local v2    # "smallestSize":Landroid/graphics/Point;
    .end local v3    # "largestSize":Landroid/graphics/Point;
    :cond_1
    move-object/from16 v4, p2

    .line 130
    :goto_0
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 131
    invoke-interface {v2}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    .line 133
    .local v2, "wm":Landroid/view/WindowMetrics;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 134
    .local v3, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v5, v3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 135
    new-instance v5, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-direct {v5, v7, v3, v8}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v5
.end method

.method public getRotation(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "d":Landroid/view/Display;
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v1, :cond_0

    .line 348
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 353
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 354
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 356
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method protected isGestureNav(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 306
    nop

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 306
    const-string v1, "config_navBarInteractionMode"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/ResourceUtils;->getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isInternalDisplay(Landroid/view/Display;)Z
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .line 208
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldInsets"    # Landroid/view/WindowInsets;
    .param p3, "outInsets"    # Landroid/graphics/Rect;

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 150
    :cond_0
    new-instance v3, Landroid/view/WindowInsets$Builder;

    invoke-direct {v3, v1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 151
    .local v3, "insetsBuilder":Landroid/view/WindowInsets$Builder;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 153
    .local v4, "navInsets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 154
    .local v5, "systemRes":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 156
    .local v6, "config":Landroid/content/res/Configuration;
    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v8, 0x258

    const/4 v9, 0x1

    if-le v7, v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 157
    .local v7, "isTablet":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->isGestureNav(Landroid/content/Context;)Z

    move-result v8

    .line 158
    .local v8, "isGesture":Z
    iget v11, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v12, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-le v11, v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 160
    .local v9, "isPortrait":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 161
    const/4 v11, 0x0

    goto :goto_2

    .line 162
    :cond_3
    if-eqz v9, :cond_4

    .line 163
    const-string v11, "navigation_bar_height"

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    .line 164
    :cond_4
    if-eqz v8, :cond_5

    .line 165
    const-string v11, "navigation_bar_height_landscape"

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    .line 166
    :cond_5
    const/4 v11, 0x0

    :goto_2
    nop

    .line 167
    .local v11, "bottomNav":I
    iget v12, v4, Landroid/graphics/Insets;->left:I

    iget v13, v4, Landroid/graphics/Insets;->top:I

    iget v14, v4, Landroid/graphics/Insets;->right:I

    invoke-static {v12, v13, v14, v11}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v12

    .line 168
    .local v12, "newNavInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v13

    invoke-virtual {v3, v13, v12}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 169
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v13

    invoke-virtual {v3, v13, v12}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 171
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v13

    .line 174
    .local v13, "statusBarInsets":Landroid/graphics/Insets;
    nop

    .line 175
    if-eqz v9, :cond_6

    const-string v14, "status_bar_height_portrait"

    goto :goto_3

    :cond_6
    const-string v14, "status_bar_height_landscape"

    .line 174
    :goto_3
    const-string v15, "status_bar_height"

    invoke-virtual {v0, v5, v14, v15}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 178
    .local v14, "statusBarHeight":I
    iget v15, v13, Landroid/graphics/Insets;->left:I

    iget v10, v13, Landroid/graphics/Insets;->top:I

    .line 180
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v0, v13, Landroid/graphics/Insets;->right:I

    move-object/from16 v17, v4

    .end local v4    # "navInsets":Landroid/graphics/Insets;
    .local v17, "navInsets":Landroid/graphics/Insets;
    iget v4, v13, Landroid/graphics/Insets;->bottom:I

    .line 178
    invoke-static {v15, v10, v0, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 183
    .local v0, "newStatusBarInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 184
    nop

    .line 185
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    .line 184
    invoke-virtual {v3, v4, v0}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 189
    if-eqz v8, :cond_7

    .line 190
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 191
    .local v4, "oldTappableInsets":Landroid/graphics/Insets;
    iget v10, v4, Landroid/graphics/Insets;->left:I

    iget v15, v4, Landroid/graphics/Insets;->top:I

    move-object/from16 v18, v0

    .end local v0    # "newStatusBarInsets":Landroid/graphics/Insets;
    .local v18, "newStatusBarInsets":Landroid/graphics/Insets;
    iget v0, v4, Landroid/graphics/Insets;->right:I

    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "oldTappableInsets":Landroid/graphics/Insets;
    .local v19, "oldTappableInsets":Landroid/graphics/Insets;
    invoke-static {v10, v15, v0, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 193
    .local v0, "newTappableInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    goto :goto_4

    .line 189
    .end local v18    # "newStatusBarInsets":Landroid/graphics/Insets;
    .end local v19    # "oldTappableInsets":Landroid/graphics/Insets;
    .local v0, "newStatusBarInsets":Landroid/graphics/Insets;
    :cond_7
    move-object/from16 v18, v0

    .line 196
    .end local v0    # "newStatusBarInsets":Landroid/graphics/Insets;
    .restart local v18    # "newStatusBarInsets":Landroid/graphics/Insets;
    :goto_4
    invoke-virtual {v3}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    .line 197
    .local v0, "result":Landroid/view/WindowInsets;
    nop

    .line 198
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v10

    or-int/2addr v4, v10

    .line 197
    invoke-virtual {v0, v4}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 199
    .local v4, "systemWindowInsets":Landroid/graphics/Insets;
    iget v10, v4, Landroid/graphics/Insets;->left:I

    iget v15, v4, Landroid/graphics/Insets;->top:I

    move-object/from16 v16, v3

    .end local v3    # "insetsBuilder":Landroid/view/WindowInsets$Builder;
    .local v16, "insetsBuilder":Landroid/view/WindowInsets$Builder;
    iget v3, v4, Landroid/graphics/Insets;->right:I

    move-object/from16 v19, v5

    .end local v5    # "systemRes":Landroid/content/res/Resources;
    .local v19, "systemRes":Landroid/content/res/Resources;
    iget v5, v4, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v2, v10, v15, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    return-object v0

    .line 145
    .end local v0    # "result":Landroid/view/WindowInsets;
    .end local v4    # "systemWindowInsets":Landroid/graphics/Insets;
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v7    # "isTablet":Z
    .end local v8    # "isGesture":Z
    .end local v9    # "isPortrait":Z
    .end local v11    # "bottomNav":I
    .end local v12    # "newNavInsets":Landroid/graphics/Insets;
    .end local v13    # "statusBarInsets":Landroid/graphics/Insets;
    .end local v14    # "statusBarHeight":I
    .end local v16    # "insetsBuilder":Landroid/view/WindowInsets$Builder;
    .end local v17    # "navInsets":Landroid/graphics/Insets;
    .end local v18    # "newStatusBarInsets":Landroid/graphics/Insets;
    .end local v19    # "systemRes":Landroid/content/res/Resources;
    :cond_8
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    .line 145
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    return-object v1
.end method
