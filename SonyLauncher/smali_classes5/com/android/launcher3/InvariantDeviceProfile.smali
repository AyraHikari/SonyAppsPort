.class public Lcom/android/launcher3/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;,
        Lcom/android/launcher3/InvariantDeviceProfile$GridOption;,
        Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;,
        Lcom/android/launcher3/InvariantDeviceProfile$DeviceType;
    }
.end annotation


# static fields
.field static final COUNT_SIZES:I = 0x4

.field private static final GRID_SPAN_PATTERN:Ljava/util/regex/Pattern;

.field private static final ICON_SIZE_DEFINED_IN_APP_DP:F = 48.0f

.field static final INDEX_DEFAULT:I = 0x0

.field static final INDEX_LANDSCAPE:I = 0x1

.field static final INDEX_TWO_PANEL_LANDSCAPE:I = 0x3

.field static final INDEX_TWO_PANEL_PORTRAIT:I = 0x2

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_IDP_GRID_NAME:Ljava/lang/String; = "idp_grid_name"

.field private static final KNEARESTNEIGHBOR:F = 3.0f

.field public static final TAG:Ljava/lang/String; = "IDP"

.field public static final TYPE_MULTI_DISPLAY:I = 0x1

.field public static final TYPE_PHONE:I = 0x0

.field public static final TYPE_TABLET:I = 0x2

.field private static final WEIGHT_EFFICIENT:F = 100000.0f

.field private static final WEIGHT_POWER:F = 5.0f


# instance fields
.field public allAppsBorderSpaces:[Landroid/graphics/PointF;

.field public allAppsCellSize:[Landroid/graphics/PointF;

.field public allAppsIconSize:[F

.field public allAppsIconTextSize:[F

.field public borderSpaces:[Landroid/graphics/PointF;

.field public dbFile:Ljava/lang/String;

.field public defaultLayoutId:I

.field public defaultWallpaperSize:Landroid/graphics/Point;

.field public defaultWidgetPadding:Landroid/graphics/Rect;

.field demoModeLayoutId:I

.field public devicePaddingId:I

.field public devicePaddings:Lcom/android/launcher3/DevicePaddings;

.field public deviceType:I

.field public fillResIconDpi:I

.field public folderBorderSpace:F

.field public horizontalMargin:[F

.field public hotseatBorderSpaces:[F

.field public hotseatColumnSpan:[I

.field public iconBitmapSize:I

.field public iconSize:[F

.field public iconTextSize:[F

.field inlineQsb:[Z

.field protected isScalable:Z

.field private final mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraAttrs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public minCellSize:[Landroid/graphics/PointF;

.field public numAllAppsColumns:I

.field public numColumns:I

.field public numDatabaseAllAppsColumns:I

.field public numDatabaseHotseatIcons:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numRows:I

.field public numSearchContainerColumns:I

.field public numShownHotseatIcons:I

.field public numShrunkenHotseatIcons:I

.field public supportedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DNcXzmawjoq65q3wgQi9M48DryY(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 97
    const-string v0, "(\\d+)_by_(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->GRID_SPAN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 189
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 189
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 204
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "gridName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "newGridName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "idp_grid_name"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    :cond_0
    new-instance v2, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v2, p1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 211
    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/DisplayController;->setPriorityListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v2, 0x4

    new-array v3, v2, [Z

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 189
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 235
    sget-object v3, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 236
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "gridName":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    .line 240
    .local v4, "defaultInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-static {v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v5

    .line 241
    .local v5, "defaultDeviceType":I
    nop

    .line 244
    const/4 v6, 0x0

    invoke-static {v1, v3, v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 241
    invoke-static {v1, v4, v7, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v7

    .line 248
    .local v7, "defaultDisplayOption":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    new-instance v8, Lcom/android/launcher3/util/DisplayController$Info;

    move-object/from16 v9, p2

    invoke-direct {v8, v1, v9}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 249
    .local v8, "myInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-static {v8}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v10

    .line 250
    .local v10, "deviceType":I
    nop

    .line 253
    invoke-static {v1, v3, v10, v6}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v11

    .line 250
    invoke-static {v1, v8, v11, v10}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v11

    .line 257
    .local v11, "myDisplayOption":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    new-instance v12, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v13, v7, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-direct {v12, v13}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    .line 258
    invoke-static {v12, v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$madd(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v12

    .line 259
    .local v12, "result":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v14

    aget v14, v14, v6

    aput v14, v13, v6

    .line 261
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_0

    .line 262
    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v14

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v15

    aget v15, v15, v13

    invoke-static {v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v16

    aget v2, v16, v13

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v14, v13

    .line 261
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x4

    goto :goto_0

    .line 266
    .end local v13    # "i":I
    :cond_0
    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v2, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetborderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetborderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v13

    invoke-static {v2, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetinlineQsb(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z

    move-result-object v2

    invoke-static {v12}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetinlineQsb(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z

    move-result-object v13

    invoke-static {v2, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    invoke-direct {v0, v1, v8, v12, v10}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridName"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 189
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    return-void

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown grid name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 646
    .local v0, "p":Lcom/android/launcher3/Partner;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher3/Partner;->applyInvariantDeviceProfileOverrides(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V

    .line 649
    :cond_0
    return-void
.end method

.method private static dist(FFFF)F
    .locals 4
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F

    .line 652
    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p3, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 318
    const-string v0, "launcher.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 320
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "idp_grid_name"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 321
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isGridOptionsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    nop

    .line 321
    :goto_0
    return-object v3

    .line 325
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isGridOptionsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 326
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 327
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "gridName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    return-object v3

    .line 331
    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile;->parseSpan(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    .line 332
    .local v4, "gridSize":Landroid/util/Size;
    if-nez v4, :cond_3

    .line 333
    return-object v3

    .line 335
    :cond_3
    new-instance v3, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    .line 337
    .local v3, "deviceGridState":Lcom/android/launcher3/model/DeviceGridState;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 338
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_1

    .line 346
    :cond_4
    invoke-static {p0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->modifyDbFileName(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    return-object v1

    .line 339
    :cond_5
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_by_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 340
    invoke-virtual {v3}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "newGridName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 342
    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    invoke-static {p0, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->modifyDbFileName(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    return-object v5

    .line 350
    .end local v1    # "gridName":Ljava/lang/String;
    .end local v3    # "deviceGridState":Lcom/android/launcher3/model/DeviceGridState;
    .end local v4    # "gridSize":Landroid/util/Size;
    .end local v5    # "newGridName":Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method private static getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I
    .locals 5
    .param p0, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 301
    const/4 v0, 0x1

    .line 302
    .local v0, "flagPhone":I
    const/4 v1, 0x2

    .line 304
    .local v1, "flagTablet":I
    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/DisplayController$Info;II)V

    .line 305
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda4;-><init>()V

    .line 306
    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v2

    .line 307
    .local v2, "type":I
    or-int v3, v0, v1

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWO_PANEL_HOME:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const/4 v3, 0x1

    return v3

    .line 310
    :cond_0
    if-ne v2, v1, :cond_1

    .line 311
    const/4 v3, 0x2

    return v3

    .line 313
    :cond_1
    return v4
.end method

.method private getLauncherIconDensity(I)I
    .locals 5
    .param p1, "requiredSize"    # I

    .line 617
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 627
    .local v0, "densityBuckets":[I
    const/16 v1, 0x280

    .line 628
    .local v1, "density":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 629
    const/high16 v3, 0x42400000    # 48.0f

    aget v4, v0, v2

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v4, v3

    .line 631
    .local v4, "expectedSize":F
    int-to-float v3, p1

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_0

    .line 632
    aget v1, v0, v2

    .line 628
    .end local v4    # "expectedSize":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 636
    .end local v2    # "i":I
    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private static getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "allowDisabledGrid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;",
            ">;"
        }
    .end annotation

    .line 521
    move-object v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 523
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    invoke-static {}, Lcom/android/launcher3/uioverrides/SomcUtils;->getProductName()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "productName":Ljava/lang/String;
    const-string v0, "CQ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    sget v0, Lcom/android/launcher3/R$xml;->somc_device_profiles_new:I

    move v4, v0

    .local v0, "somc_device_profiles_resource":I
    goto :goto_0

    .line 535
    .end local v0    # "somc_device_profiles_resource":I
    :cond_0
    sget v0, Lcom/android/launcher3/R$xml;->somc_device_profiles:I

    move v4, v0

    .line 537
    .local v4, "somc_device_profiles_resource":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 538
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 540
    .local v0, "depth":I
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    .line 541
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-le v6, v0, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v12, p2

    goto/16 :goto_5

    :cond_2
    :goto_2
    const/4 v6, 0x1

    if-eq v7, v6, :cond_9

    .line 542
    const/4 v9, 0x2

    if-ne v7, v9, :cond_8

    :try_start_2
    const-string v10, "grid-option"

    .line 543
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 545
    new-instance v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v12, p2

    :try_start_3
    invoke-direct {v10, p0, v11, v12}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 547
    .local v10, "gridOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    iget-boolean v11, v10, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled:Z

    if-nez v11, :cond_3

    if-eqz p3, :cond_6

    .line 548
    :cond_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 549
    .local v11, "displayDepth":I
    :cond_4
    :goto_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    move v7, v13

    if-ne v13, v8, :cond_5

    .line 550
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v11, :cond_6

    :cond_5
    if-eq v7, v6, :cond_6

    .line 552
    if-ne v7, v9, :cond_4

    const-string v13, "display-option"

    .line 553
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 552
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 554
    new-instance v13, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 555
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    invoke-direct {v13, v10, p0, v14}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 554
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 559
    .end local v10    # "gridOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    .end local v11    # "displayDepth":I
    :cond_6
    goto :goto_1

    .line 537
    .end local v0    # "depth":I
    .end local v7    # "type":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 543
    .restart local v0    # "depth":I
    .restart local v7    # "type":I
    :cond_7
    move/from16 v12, p2

    goto :goto_1

    .line 537
    .end local v0    # "depth":I
    .end local v7    # "type":I
    :catchall_1
    move-exception v0

    move/from16 v12, p2

    :goto_4
    move-object/from16 v8, p1

    goto/16 :goto_a

    .line 542
    .restart local v0    # "depth":I
    .restart local v7    # "type":I
    :cond_8
    move/from16 v12, p2

    goto :goto_1

    .line 541
    :cond_9
    move/from16 v12, p2

    .line 561
    .end local v0    # "depth":I
    .end local v7    # "type":I
    :goto_5
    if-eqz v5, :cond_a

    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    move-object/from16 v8, p1

    goto/16 :goto_c

    .line 563
    :cond_a
    :goto_6
    nop

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, "filteredProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 567
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 568
    .local v6, "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    iget-object v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object v7, v7, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-boolean v7, v7, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled:Z

    if-nez v7, :cond_b

    if-eqz p3, :cond_c

    .line 570
    :cond_b
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v6    # "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    :cond_c
    goto :goto_7

    .line 567
    :cond_d
    move-object/from16 v8, p1

    goto :goto_8

    .line 566
    :cond_e
    move-object/from16 v8, p1

    .line 574
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 576
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 577
    .restart local v6    # "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetcanBeDefault(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 578
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v6    # "option":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    :cond_f
    goto :goto_9

    .line 582
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 585
    return-object v0

    .line 583
    :cond_11
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "No display option with canBeDefault=true"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 537
    .end local v0    # "filteredProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_2
    move-exception v0

    move-object/from16 v8, p1

    move/from16 v12, p2

    :goto_a
    move-object v6, v0

    if-eqz v5, :cond_12

    :try_start_5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    .end local v3    # "productName":Ljava/lang/String;
    .end local v4    # "somc_device_profiles_resource":I
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "gridName":Ljava/lang/String;
    .end local p2    # "deviceType":I
    .end local p3    # "allowDisabledGrid":Z
    :cond_12
    :goto_b
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1

    .line 561
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    .restart local v3    # "productName":Ljava/lang/String;
    .restart local v4    # "somc_device_profiles_resource":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "gridName":Ljava/lang/String;
    .restart local p2    # "deviceType":I
    .restart local p3    # "allowDisabledGrid":Z
    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v8, p1

    move/from16 v12, p2

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridName"    # Ljava/lang/String;

    .line 379
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    .line 380
    .local v0, "displayInfo":Lcom/android/launcher3/util/DisplayController$Info;
    invoke-static {v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v1

    .line 382
    .local v1, "deviceType":I
    nop

    .line 384
    invoke-static {p1}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v2

    .line 383
    invoke-static {p1, p2, v1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 385
    .local v2, "allOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    nop

    .line 386
    invoke-static {p1, v0, v2, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v3

    .line 387
    .local v3, "displayOption":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V

    .line 388
    iget-object v4, v3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object v4, v4, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    return-object v4
.end method

.method private initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "displayOption"    # Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .param p4, "deviceType"    # I

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 394
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v5, p3

    iget-object v6, v5, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 395
    .local v6, "closestProfile":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    iget v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 396
    iget v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 397
    iget v7, v6, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    .line 398
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdbFile(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 399
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdefaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 400
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdemoModeLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    .line 401
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumFolderRows(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 402
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumFolderColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 403
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetisScalable(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->isScalable:Z

    .line 404
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetdevicePaddingId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 405
    iput v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    .line 407
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetextraAttrs(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->mExtraAttrs:Landroid/util/SparseArray;

    .line 409
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    .line 410
    const/4 v8, 0x0

    aget v7, v7, v8

    .line 411
    .local v7, "maxIconSize":F
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    iget-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    array-length v11, v10

    if-ge v9, v11, :cond_0

    .line 412
    aget v10, v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 411
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 414
    .end local v9    # "i":I
    :cond_0
    invoke-static {v7, v4}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 415
    invoke-direct {v0, v9}, Lcom/android/launcher3/InvariantDeviceProfile;->getLauncherIconDensity(I)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 417
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgettextSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    .line 419
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    .line 421
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetborderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    .line 422
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetfolderBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->folderBorderSpace:F

    .line 424
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgethorizontalMargin(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->horizontalMargin:[F

    .line 426
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    .line 427
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumShrunkenHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShrunkenHotseatIcons:I

    .line 428
    const/4 v9, 0x1

    if-ne v3, v9, :cond_1

    .line 429
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumDatabaseHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v10

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v10

    :goto_1
    iput v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    .line 430
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgethotseatColumnSpan(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    .line 431
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgethotseatBorderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatBorderSpaces:[F

    .line 433
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v10

    iput v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    .line 434
    if-ne v3, v9, :cond_2

    .line 435
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumDatabaseAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v10

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->-$$Nest$fgetnumAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v10

    :goto_2
    iput v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    .line 437
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    .line 438
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsBorderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    .line 439
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsIconSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    .line 440
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetallAppsIconTextSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    .line 441
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->isGridOptionsEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 442
    iget-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    .line 443
    iget-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    .line 446
    :cond_3
    iget v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    if-eqz v10, :cond_4

    .line 447
    new-instance v10, Lcom/android/launcher3/DevicePaddings;

    iget v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    invoke-direct {v10, v1, v11}, Lcom/android/launcher3/DevicePaddings;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddings:Lcom/android/launcher3/DevicePaddings;

    .line 450
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetinlineQsb(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 454
    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    .line 456
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v10, "localSupportedProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/DeviceProfile;>;"
    new-instance v11, Landroid/graphics/Point;

    iget-object v12, v2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-direct {v11, v12}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    .line 458
    iget-object v11, v2, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/util/WindowBounds;

    .line 459
    .local v12, "bounds":Lcom/android/launcher3/util/WindowBounds;
    new-instance v13, Lcom/android/launcher3/DeviceProfile$Builder;

    invoke-direct {v13, v1, v0, v2}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    if-ne v3, v9, :cond_5

    move v14, v9

    goto :goto_4

    :cond_5
    move v14, v8

    .line 460
    :goto_4
    invoke-virtual {v13, v14}, Lcom/android/launcher3/DeviceProfile$Builder;->setUseTwoPanels(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v13

    .line 461
    invoke-virtual {v13, v12}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v13

    .line 462
    invoke-virtual {v13}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    .line 459
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v13, v12, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 466
    .local v13, "displayWidth":I
    iget-object v14, v12, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 467
    .local v14, "displayHeight":I
    iget-object v15, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v8, v15, Landroid/graphics/Point;->y:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v15, Landroid/graphics/Point;->y:I

    .line 473
    nop

    .line 472
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v15

    invoke-static {v8, v15}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v8

    const/high16 v15, 0x44340000    # 720.0f

    cmpg-float v8, v8, v15

    if-gez v8, :cond_6

    .line 474
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_5

    .line 475
    :cond_6
    invoke-static {v13, v14}, Lcom/android/launcher3/InvariantDeviceProfile;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v8

    :goto_5
    nop

    .line 476
    .local v8, "parallaxFactor":F
    iget-object v15, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v9, v15, Landroid/graphics/Point;->x:I

    int-to-float v2, v13

    mul-float/2addr v2, v8

    .line 477
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v15, Landroid/graphics/Point;->x:I

    .line 478
    .end local v8    # "parallaxFactor":F
    .end local v12    # "bounds":Lcom/android/launcher3/util/WindowBounds;
    .end local v13    # "displayWidth":I
    .end local v14    # "displayHeight":I
    move-object/from16 v2, p2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    .line 479
    :cond_7
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 481
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .local v2, "cn":Landroid/content/ComponentName;
    const/4 v8, 0x0

    invoke-static {v1, v2, v8}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    .line 483
    return-void
.end method

.method private static invDistWeightedInterpolate(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "deviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/DisplayController$Info;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;",
            ">;I)",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;"
        }
    .end annotation

    .line 657
    .local p2, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const v2, 0x7fffffff

    .line 658
    .local v2, "minWidthPx":I
    const v3, 0x7fffffff

    .line 659
    .local v3, "minHeightPx":I
    iget-object v4, v0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/WindowBounds;

    .line 660
    .local v5, "bounds":Lcom/android/launcher3/util/WindowBounds;
    invoke-virtual {v0, v5}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v6

    .line 661
    .local v6, "isTablet":Z
    if-eqz v6, :cond_0

    const/4 v7, 0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_1

    .line 663
    iget-object v7, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 664
    iget-object v7, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 661
    :cond_0
    move/from16 v8, p3

    .line 666
    :cond_1
    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher3/util/WindowBounds;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 668
    iget-object v7, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 669
    iget-object v7, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 671
    :cond_2
    iget-object v7, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 672
    iget-object v7, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 674
    .end local v5    # "bounds":Lcom/android/launcher3/util/WindowBounds;
    .end local v6    # "isTablet":Z
    :goto_1
    goto :goto_0

    .line 676
    :cond_3
    move/from16 v8, p3

    int-to-float v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v4

    .line 677
    .local v4, "width":F
    int-to-float v5, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v5

    .line 678
    .local v5, "height":F
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->getQsbEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$dimen;->search_widget_hotseat_height:I

    .line 680
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 683
    :cond_4
    move v6, v5

    .line 684
    .local v6, "finalHeight":F
    new-instance v7, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;

    invoke-direct {v7, v4, v6}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;-><init>(FF)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 688
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 689
    .local v7, "closestPoint":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    iget-object v9, v7, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 690
    .local v9, "closestOption":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    const/4 v10, 0x0

    .line 692
    .local v10, "weights":F
    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v11

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v12

    invoke-static {v4, v5, v11, v12}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    .line 693
    return-object v7

    .line 696
    :cond_5
    new-instance v11, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v11, v9}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    .line 697
    .local v11, "out":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    int-to-float v13, v12

    const/high16 v14, 0x40400000    # 3.0f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    .line 698
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 699
    .local v13, "p":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    invoke-static {v13}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v14

    invoke-static {v13}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v15

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v4, v5, v14, v15, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->weight(FFFFF)F

    move-result v0

    .line 700
    .local v0, "w":F
    add-float/2addr v10, v0

    .line 701
    new-instance v14, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v14}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>()V

    invoke-static {v14, v13}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$madd(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v14

    invoke-static {v14, v0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$mmultiply(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$madd(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 697
    .end local v0    # "w":F
    .end local v13    # "p":Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    goto :goto_2

    .line 703
    .end local v12    # "i":I
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v10

    invoke-static {v11, v0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$mmultiply(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v12, 0x4

    if-ge v0, v12, :cond_7

    .line 708
    invoke-static {v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v12

    invoke-static {v11}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v13

    aget v13, v13, v0

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v14

    aget v14, v14, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v12, v0

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 711
    .end local v0    # "i":I
    :cond_7
    return-object v11
.end method

.method static synthetic lambda$getDeviceType$1(Lcom/android/launcher3/util/DisplayController$Info;IILcom/android/launcher3/util/WindowBounds;)I
    .locals 1
    .param p0, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p1, "flagTablet"    # I
    .param p2, "flagPhone"    # I
    .param p3, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 305
    invoke-virtual {p0, p3}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method static synthetic lambda$getDeviceType$2(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 306
    or-int v0, p0, p1

    return v0
.end method

.method static synthetic lambda$invDistWeightedInterpolate$4(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I
    .locals 3
    .param p0, "width"    # F
    .param p1, "finalHeight"    # F
    .param p2, "a"    # Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .param p3, "b"    # Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 685
    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->-$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    .line 686
    invoke-static {p0, p1, v1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v1

    .line 685
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method private static modifyDbFileName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newGridName"    # Ljava/lang/String;

    .line 370
    const-string v0, "launcher.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 371
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/launcher_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 376
    :cond_0
    return-void
.end method

.method private static parseSpan(Ljava/lang/String;)Landroid/util/Size;
    .locals 4
    .param p0, "gridSpanString"    # Ljava/lang/String;

    .line 355
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->GRID_SPAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 356
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 359
    .local v1, "numCols":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 360
    .local v2, "numRows":I
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 361
    .end local v1    # "numCols":I
    .end local v2    # "numRows":I
    :catch_0
    move-exception v1

    .line 362
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid span parsing failed for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IDP"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v1    # "ignored":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private toModelState()[Ljava/lang/Object;
    .locals 3

    .line 501
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 503
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 501
    return-object v0
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 770
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 777
    .local v0, "aspectRatio":F
    const v1, 0x3fcccccd    # 1.6f

    .line 778
    .local v1, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v2, 0x3f200000    # 0.625f

    .line 779
    .local v2, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 780
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v4, 0x3f99999a    # 1.2f

    .line 787
    .local v4, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 791
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 792
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v0

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method

.method private static weight(FFFFF)F
    .locals 7
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "pow"    # F

    .line 758
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    .line 759
    .local v0, "d":F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 760
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    return v1

    .line 762
    :cond_0
    const-wide v1, 0x40f86a0000000000L    # 100000.0

    float-to-double v3, v0

    float-to-double v5, p4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method


# virtual methods
.method public addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    .line 486
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;
    .locals 6
    .param p1, "screenWidth"    # F
    .param p2, "screenHeight"    # F
    .param p3, "rotation"    # I

    .line 741
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DeviceProfile;

    .line 742
    .local v0, "bestMatch":Lcom/android/launcher3/DeviceProfile;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 744
    .local v1, "minDiff":F
    iget-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DeviceProfile;

    .line 745
    .local v3, "profile":Lcom/android/launcher3/DeviceProfile;
    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v5, v5

    sub-float/2addr v5, p2

    .line 746
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    .line 747
    .local v4, "diff":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    .line 748
    move v1, v4

    .line 749
    move-object v0, v3

    goto :goto_1

    .line 750
    :cond_0
    cmpl-float v5, v4, v1

    if-nez v5, :cond_1

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    if-ne v5, p3, :cond_1

    .line 751
    move-object v0, v3

    .line 753
    .end local v3    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v4    # "diff":F
    :cond_1
    :goto_1
    goto :goto_0

    .line 754
    :cond_2
    return-object v0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 715
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 716
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 718
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    .line 719
    .local v2, "screenWidth":F
    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    .line 720
    .local v3, "screenHeight":F
    sget-object v4, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result v4

    .line 722
    .local v4, "rotation":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v5, :cond_0

    .line 723
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 724
    .local v5, "stringWriter":Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 725
    .local v6, "printWriter":Ljava/io/PrintWriter;
    sget-object v7, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/DisplayController;->dump(Ljava/io/PrintWriter;)V

    .line 726
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 727
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeviceProfile -\nconfig: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ndisplayMetrics: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 729
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nrotation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 731
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    .line 727
    const-string v9, "b/231312158"

    invoke-static {v9, v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v5    # "stringWriter":Ljava/io/StringWriter;
    .end local v6    # "printWriter":Ljava/io/PrintWriter;
    :cond_0
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    return-object v5
.end method

.method synthetic lambda$new$0$com-android-launcher3-InvariantDeviceProfile(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p1, "displayContext"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 213
    and-int/lit8 v0, p3, 0x1c

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    .line 217
    :cond_0
    return-void
.end method

.method synthetic lambda$setCurrentGrid$3$com-android-launcher3-InvariantDeviceProfile(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 507
    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "oldState":[Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "gridName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 514
    .local v2, "modelPropsChanged":Z
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    .line 515
    .local v4, "listener":Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
    invoke-interface {v4, v2}, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;->onIdpChanged(Z)V

    .line 516
    .end local v4    # "listener":Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
    goto :goto_0

    .line 517
    :cond_0
    return-void
.end method

.method public parseAllGridOptions(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/InvariantDeviceProfile$GridOption;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/InvariantDeviceProfile$GridOption;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$xml;->somc_device_profiles:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 597
    .local v2, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 598
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_3

    :cond_1
    const/4 v3, 0x1

    if-eq v4, v3, :cond_3

    .line 599
    const/4 v3, 0x2

    if-ne v4, v3, :cond_0

    const-string v3, "grid-option"

    .line 600
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 602
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    invoke-direct {v3, p1, v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 603
    .local v3, "option":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    iget-boolean v5, v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled:Z

    if-eqz v5, :cond_2

    .line 604
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    .end local v3    # "option":Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    :cond_2
    goto :goto_0

    .line 608
    .end local v2    # "depth":I
    .end local v4    # "type":I
    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 611
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    nop

    .line 612
    return-object v0

    .line 594
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/InvariantDeviceProfile$GridOption;>;"
    .end local p0    # "this":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local p1    # "context":Landroid/content/Context;
    :cond_5
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 608
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/InvariantDeviceProfile$GridOption;>;"
    .restart local p0    # "this":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IDP"

    const-string v3, "Error parsing device profile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public reinitializeAfterRestore(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 280
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "currentGridName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 282
    .local v1, "currentDbFile":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "newGridName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 284
    .local v3, "newDbFile":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored grid is disabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", migrating to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removing all other grid db files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IDP"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v4, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    .local v6, "gridDbFile":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 290
    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p1, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed old grid db file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v6    # "gridDbFile":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    :cond_3
    return-void
.end method

.method public removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method public setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridName"    # Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "idp_grid_name"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 497
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method
