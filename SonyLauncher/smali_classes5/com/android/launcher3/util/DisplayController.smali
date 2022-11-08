.class public Lcom/android/launcher3/util/DisplayController;
.super Ljava/lang/Object;
.source "DisplayController.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/DisplayController$NavigationMode;,
        Lcom/android/launcher3/util/DisplayController$PortraitSize;,
        Lcom/android/launcher3/util/DisplayController$Info;,
        Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_INTERNAL_CONFIGURATION_CHANGED:Ljava/lang/String; = "com.sonymobile.xperiahome.action.INTERNAL_CONFIGURATION_CHANGED"

.field private static final ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final CHANGE_ACTIVE_SCREEN:I = 0x1

.field public static final CHANGE_ALL:I = 0x1f

.field public static final CHANGE_DENSITY:I = 0x4

.field public static final CHANGE_NAVIGATION_MODE:I = 0x10

.field public static final CHANGE_ROTATION:I = 0x2

.field public static final CHANGE_SUPPORTED_BOUNDS:I = 0x8

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAV_BAR_INTERACTION_MODE_RES_NAME:Ljava/lang/String; = "config_navBarInteractionMode"

.field private static final TAG:Ljava/lang/String; = "DisplayController"

.field private static final TARGET_OVERLAY_PACKAGE:Ljava/lang/String; = "android"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDM:Landroid/hardware/display/DisplayManager;

.field private mDestroyed:Z

.field private mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

.field private final mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private final mWindowContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$QjdXHmv721WSoJW-MI-3oZlD7FY(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/DisplayController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/DisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$W34lofT-OUtON7wbxha2sdSMjs0(Lcom/android/launcher3/util/DisplayController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->onIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smparseNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->parseNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/DisplayController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    .line 109
    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    .line 110
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mDM:Landroid/hardware/display/DisplayManager;

    .line 112
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 113
    .local v1, "display":Landroid/view/Display;
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v2, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 117
    :cond_0
    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    .line 118
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 120
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.xperiahome.action.INTERNAL_CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "android"

    invoke-static {v3, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    .line 124
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    .line 128
    .local v0, "wmProxy":Lcom/android/launcher3/util/window/WindowManagerProxy;
    new-instance v2, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/DisplayController;->getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    iput-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 130
    return-void
.end method

.method private getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .line 222
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 136
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-object v0
.end method

.method private handleInfoChange(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    .line 227
    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    .line 228
    .local v0, "wmProxy":Lcom/android/launcher3/util/window/WindowManagerProxy;
    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 230
    .local v1, "oldInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    .line 231
    .local v2, "displayContext":Landroid/content/Context;
    new-instance v3, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetmPerDisplayBounds(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v3, v2, p1, v0, v4}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    .line 233
    .local v3, "newInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-static {v3}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v4

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v5, v1, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v5, v1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v4, v5, :cond_1

    .line 236
    :cond_0
    new-instance v4, Lcom/android/launcher3/util/DisplayController$Info;

    .line 237
    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {v4, v2, p1, v0, v5}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    move-object v3, v4

    .line 240
    :cond_1
    const/4 v4, 0x0

    .line 241
    .local v4, "change":I
    iget-object v5, v3, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 242
    or-int/lit8 v4, v4, 0x1

    .line 244
    :cond_2
    iget v5, v3, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget v6, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eq v5, v6, :cond_3

    .line 245
    or-int/lit8 v4, v4, 0x2

    .line 247
    :cond_3
    invoke-static {v3}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v5

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v6

    if-ne v5, v6, :cond_4

    iget v5, v3, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v6, v1, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    .line 248
    :cond_4
    or-int/lit8 v4, v4, 0x4

    .line 250
    :cond_5
    iget-object v5, v3, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v6, v1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v5, v6, :cond_6

    .line 251
    or-int/lit8 v4, v4, 0x10

    .line 253
    :cond_6
    iget-object v5, v3, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    iget-object v6, v1, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 254
    or-int/lit8 v4, v4, 0x8

    .line 256
    iget-object v5, v3, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 257
    .local v5, "currentS":Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetmPerDisplayBounds(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object v6

    iget-object v7, v3, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    .line 258
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 259
    .local v6, "cachedBounds":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;>;"
    if-nez v6, :cond_7

    const/4 v7, 0x0

    goto :goto_0

    :cond_7
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget-object v7, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    .line 260
    .local v7, "expectedS":Landroid/graphics/Point;
    :goto_0
    iget-object v8, v3, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    iget-object v9, v1, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    const-string v10, "b/198965093"

    if-eq v8, v9, :cond_8

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inconsistent number of displays\ndisplay state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 263
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\noldInfo.supportedBounds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nnewInfo.supportedBounds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 261
    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_8
    if-eqz v7, :cond_a

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    .line 268
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ne v8, v9, :cond_9

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    .line 269
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eq v8, v9, :cond_a

    .line 270
    :cond_9
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 271
    const-string v8, "Display size changed while display is off, ignoring change"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 277
    .end local v5    # "currentS":Landroid/graphics/Point;
    .end local v6    # "cachedBounds":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;>;"
    .end local v7    # "expectedS":Landroid/graphics/Point;
    :cond_a
    if-eqz v4, :cond_b

    .line 278
    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 279
    move v5, v4

    .line 280
    .local v5, "flags":I
    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v2, v5}, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 282
    .end local v5    # "flags":I
    :cond_b
    return-void
.end method

.method private notifyChange(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 290
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-interface {v2, p1, v3, p2}, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private onIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 164
    iget-boolean v0, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mDM:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 168
    .local v0, "display":Landroid/view/Display;
    const/4 v2, 0x0

    .line 169
    .local v2, "reconfigure":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const/4 v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    iget-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 173
    .local v3, "config":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v4

    iget v5, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 177
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 178
    const-string v1, "DisplayController"

    const-string v3, "Configuration changed, notifying listeners"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz v0, :cond_5

    .line 180
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/DisplayController;->handleInfoChange(Landroid/view/Display;)V

    .line 183
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sonymobile.xperiahome.action.INTERNAL_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 184
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/util/DisplayController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/DisplayController;Landroid/view/Display;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 186
    :cond_6
    return-void
.end method

.method private static parseNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 435
    nop

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 435
    const-string v1, "config_navBarInteractionMode"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/ResourceUtils;->getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    .line 438
    .local v0, "modeInt":I
    if-ne v0, v2, :cond_0

    .line 439
    const-string v1, "DisplayController"

    const-string v2, "Failed to get system resource ID. Incompatible framework version?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/DisplayController$NavigationMode;->values()[Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 442
    .local v4, "m":Lcom/android/launcher3/util/DisplayController$NavigationMode;
    iget v5, v4, Lcom/android/launcher3/util/DisplayController$NavigationMode;->resValue:I

    if-ne v5, v0, :cond_1

    .line 443
    return-object v4

    .line 441
    .end local v4    # "m":Lcom/android/launcher3/util/DisplayController$NavigationMode;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 447
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    :goto_2
    return-object v1
.end method


# virtual methods
.method public addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public close()V
    .locals 1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 147
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 383
    .local v0, "info":Lcom/android/launcher3/util/DisplayController$Info;
    const-string v1, "DisplayController.Info:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  fontScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  densityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  navigationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController$NavigationMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  supportedBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public getInfo()Lcom/android/launcher3/util/DisplayController$Info;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    return-object v0
.end method

.method synthetic lambda$handleInfoChange$1$com-android-launcher3-util-DisplayController(Landroid/content/Context;I)V
    .locals 0
    .param p1, "displayContext"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->notifyChange(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic lambda$onIntent$0$com-android-launcher3-util-DisplayController(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .line 184
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/DisplayController;->notifyChange(Landroid/content/Context;I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 193
    .local v0, "display":Landroid/view/Display;
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->-$$Nest$fgetmScreenSizeDp(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/launcher3/util/DisplayController$PortraitSize;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/DisplayController$PortraitSize;-><init>(II)V

    .line 196
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/DisplayController$PortraitSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/DisplayController;->handleInfoChange(Landroid/view/Display;)V

    .line 200
    :cond_1
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .line 203
    return-void
.end method

.method public removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public setPriorityListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 206
    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 207
    return-void
.end method
