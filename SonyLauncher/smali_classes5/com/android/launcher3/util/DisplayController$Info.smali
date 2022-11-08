.class public Lcom/android/launcher3/util/DisplayController$Info;
.super Ljava/lang/Object;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final currentSize:Landroid/graphics/Point;

.field public final cutout:Landroid/graphics/Rect;

.field private final densityDpi:I

.field public final displayId:Ljava/lang/String;

.field public final fontScale:F

.field private final mPerDisplayBounds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

.field public final navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field public final rotation:I

.field public final supportedBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerDisplayBounds(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenSizeDp(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/launcher3/util/DisplayController$PortraitSize;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 317
    new-instance v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "wmProxy"    # Lcom/android/launcher3/util/window/WindowManagerProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Display;",
            "Lcom/android/launcher3/util/window/WindowManagerProxy;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;)V"
        }
    .end annotation

    .line 323
    .local p4, "perDisplayBoundsCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/Pair<Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    .line 312
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    .line 324
    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/content/Context;Landroid/view/Display;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v6

    .line 325
    .local v6, "displayInfo":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    iget v7, v6, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iput v7, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    .line 326
    iget-object v7, v6, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iput-object v7, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 327
    iget-object v8, v6, Lcom/android/launcher3/util/window/CachedDisplayInfo;->id:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    .line 328
    iget-object v9, v6, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    iput-object v9, v0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 331
    .local v9, "config":Landroid/content/res/Configuration;
    iget v10, v9, Landroid/content/res/Configuration;->fontScale:F

    iput v10, v0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    .line 332
    iget v10, v9, Landroid/content/res/Configuration;->densityDpi:I

    iput v10, v0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    .line 333
    new-instance v10, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget v11, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v12, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v10, v11, v12}, Lcom/android/launcher3/util/DisplayController$PortraitSize;-><init>(II)V

    iput-object v10, v0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    .line 334
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DisplayController;->-$$Nest$smparseNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 336
    move-object/from16 v10, p4

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 337
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 339
    .local v11, "cachedValue":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;>;"
    invoke-virtual {v3, v1, v2, v6}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRealBounds(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v12

    .line 340
    .local v12, "realBounds":Lcom/android/launcher3/util/WindowBounds;
    if-nez v11, :cond_0

    .line 341
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_0
    iget-object v4, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Lcom/android/launcher3/util/WindowBounds;

    iget v13, v6, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    aget-object v4, v4, v13

    .line 345
    .local v4, "expectedBounds":Lcom/android/launcher3/util/WindowBounds;
    invoke-virtual {v12, v4}, Lcom/android/launcher3/util/WindowBounds;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 346
    const/4 v13, 0x4

    new-array v14, v13, [Lcom/android/launcher3/util/WindowBounds;

    .line 347
    .local v14, "clone":[Lcom/android/launcher3/util/WindowBounds;
    iget-object v15, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v15, v1, v14, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget v1, v6, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    aput-object v12, v14, v1

    .line 349
    invoke-virtual {v6}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->normalize()Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v1

    invoke-static {v1, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 350
    invoke-virtual {v5, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v4    # "expectedBounds":Lcom/android/launcher3/util/WindowBounds;
    .end local v14    # "clone":[Lcom/android/launcher3/util/WindowBounds;
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v4, Lcom/android/launcher3/util/DisplayController$Info$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/launcher3/util/DisplayController$Info$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/DisplayController$Info;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", currentSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "b/211775278"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "perDisplayBounds: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method


# virtual methods
.method public getDensityDpi()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return v0
.end method

.method public isTablet(Lcom/android/launcher3/util/WindowBounds;)Z
    .locals 2
    .param p1, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F

    move-result v0

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-util-DisplayController$Info(Landroid/util/Pair;)V
    .locals 2
    .param p1, "pair"    # Landroid/util/Pair;

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/android/launcher3/util/WindowBounds;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F
    .locals 2
    .param p1, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 370
    iget-object v0, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v0

    return v0
.end method
